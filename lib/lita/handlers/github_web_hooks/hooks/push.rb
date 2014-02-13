module Lita::Handlers
  module GitHubWebHooks
    class Push < Hook
      private

      def message
        @message ||= I18n.t(
          "lita.handlers.github_web_hooks.push",
          name: name,
          ref: ref,
          repo: repo,
          compare_url: compare_url
        )
      end

      def compare_url
        payload["compare"]
      end

      def name
        payload["pusher"]["name"]
      end

      def ref
        payload["ref"]
      end

      def repo
        "#{payload["repository"]["owner"]["name"]}/#{payload["repository"]["name"]}"
      end
    end

    GitHubWebHooks.register_hook("push", Push)
  end
end
