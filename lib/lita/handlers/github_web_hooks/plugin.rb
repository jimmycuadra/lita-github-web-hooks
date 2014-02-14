module Lita
  module Handlers
    module GitHubWebHooks
      class Plugin < Handler
        def self.default_config(config)
          config.room_ids = []
        end

        # Overrides the handler config key, from plugin to github_web_hooks.
        def self.name
          "GithubWebHooks"
        end

        http.post "/github-web-hooks", :receive_hook

        def receive_hook(request, response)
          if valid?(request)
            event_class = event_class_from_request(request)
            payload = extract_payload(request)
            event_class.new(robot, payload).call
          end

          response.status = 202
        end

        private

        def event_class_from_request(request)
          GitHubWebHooks.hooks[event_type_from_request(request)]
        end

        def event_type_from_request(request)
          request.env["HTTP_X_GITHUB_EVENT"]
        end

        def extract_payload(request)
          MultiJson.load(request.body)
        end

        def github_cidrs
          response = http.get("https://api.github.com/meta")
          data = MultiJson.load(response.body)
          data["hooks"]
        end

        def valid?(request)
          valid_content_type?(request) && valid_event_type?(request) && valid_ip?(request)
        end

        def valid_content_type?(request)
          validity = request.media_type == "application/json"
          Lita.logger.warn(
            "GitHub web hook received with invalid media type: #{request.media_type}"
          ) unless validity
          validity
        end

        def valid_event_type?(request)
          validity = !event_class_from_request(request).nil?
          Lita.logger.warn(
            "GitHub web hook received with invalid event: #{event_type_from_request(request)}"
          ) unless validity
          validity
        end

        def valid_ip?(request)
          ip = request.ip

          validity = github_cidrs.any? do |cidr|
            NetAddr::CIDR.create(cidr).contains?(ip)
          end

          Lita.logger.warn("GitHub web hook received from invalid IP: #{ip}") unless validity
          validity
        end
      end

      Lita.register_handler(Plugin)
    end
  end
end
