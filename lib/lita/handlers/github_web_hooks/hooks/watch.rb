module Lita::Handlers
  module GitHubWebHooks
    class Watch < Hook
      private

      def message
        @message ||= I18n.t(
          "lita.handlers.github_web_hooks.watch",
          user: user,
          repo: repo,
          stargazers_count: stargazers_count
        )
      end

      def repo
        payload["repository"]["full_name"]
      end

      def stargazers_count
        payload["repository"]["stargazers_count"]
      end

      def user
        payload["sender"]["login"]
      end
    end

    GitHubWebHooks.register_hook("watch", Watch)
  end
end
