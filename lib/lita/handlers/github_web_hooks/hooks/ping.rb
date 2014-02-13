module Lita::Handlers
  module GitHubWebHooks
    class Ping < Hook
      private

      def message
        @message ||= I18n.t("lita.handlers.github_web_hooks.ping", zen: zen)
      end

      def zen
        payload["zen"]
      end
    end

    GitHubWebHooks.register_hook("ping", Ping)
  end
end
