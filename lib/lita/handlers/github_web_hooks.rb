require "i18n"
require "lita"
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

I18n.load_path << Dir[
  File.expand_path(File.join("..", "..", "..", "..", "locales", "*.yml"), __FILE__)
]
I18n.enforce_available_locales = true

require_relative "github_web_hooks/hook"

Dir[File.dirname(__FILE__) + ("/github_web_hooks/hooks/*")].each do |file|
  require_relative "github_web_hooks/hooks/#{File.basename(file, ".rb")}"
end

require_relative "github_web_hooks/plugin"
