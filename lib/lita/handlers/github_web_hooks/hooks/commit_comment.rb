module Lita::Handlers
  module GitHubWebHooks
    class CommitComment < Hook
    end

    GitHubWebHooks.register_hook("commit_comment", CommitComment)
  end
end
