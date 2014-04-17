require "netaddr"

module Lita::Handlers
  module GitHubWebHooks
    class << self
      def hooks
        @hooks ||= {}
      end

      def register_hook(key, hook)
        hooks[key] = hook
      end
    end
  end
end

require_relative "github_web_hooks/hook"

require_relative "github_web_hooks/hooks/ping"
require_relative "github_web_hooks/hooks/push"
require_relative "github_web_hooks/hooks/watch"

require_relative "github_web_hooks/plugin"
