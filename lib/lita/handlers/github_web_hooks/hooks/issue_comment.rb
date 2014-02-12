module Lita::Handlers
  module GitHubWebHooks
    class IssueComment < Hook
    end

    GitHubWebHooks.register_hook("issue_comment", IssueComment)
  end
end
