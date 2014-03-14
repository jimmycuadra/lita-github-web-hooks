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

Dir[File.dirname(__FILE__) + ("/github_web_hooks/hooks/*")].each do |file|
  require_relative "github_web_hooks/hooks/#{File.basename(file, ".rb")}"
end

require_relative "github_web_hooks/plugin"
