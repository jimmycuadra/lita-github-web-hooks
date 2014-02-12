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

require "lita/handlers/github_web_hooks/hook"

require "lita/handlers/github_web_hooks/hooks/commit_comment"
require "lita/handlers/github_web_hooks/hooks/create"
require "lita/handlers/github_web_hooks/hooks/delete"
require "lita/handlers/github_web_hooks/hooks/deployment"
require "lita/handlers/github_web_hooks/hooks/deployment_status"
require "lita/handlers/github_web_hooks/hooks/download"
require "lita/handlers/github_web_hooks/hooks/follow"
require "lita/handlers/github_web_hooks/hooks/fork"
require "lita/handlers/github_web_hooks/hooks/fork_apply"
require "lita/handlers/github_web_hooks/hooks/gist"
require "lita/handlers/github_web_hooks/hooks/gollum"
require "lita/handlers/github_web_hooks/hooks/issue_comment"
require "lita/handlers/github_web_hooks/hooks/issues"
require "lita/handlers/github_web_hooks/hooks/member"
require "lita/handlers/github_web_hooks/hooks/ping"
require "lita/handlers/github_web_hooks/hooks/public"
require "lita/handlers/github_web_hooks/hooks/pull_request"
require "lita/handlers/github_web_hooks/hooks/pull_request_review_comment"
require "lita/handlers/github_web_hooks/hooks/push"
require "lita/handlers/github_web_hooks/hooks/release"
require "lita/handlers/github_web_hooks/hooks/status"
require "lita/handlers/github_web_hooks/hooks/team_add"
require "lita/handlers/github_web_hooks/hooks/watch"

require "lita/handlers/github_web_hooks/plugin"
