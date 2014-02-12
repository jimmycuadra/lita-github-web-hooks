module Lita::Handlers
  module GitHubWebHooks
    class PullRequest < Hook
    end

    GitHubWebHooks.register_hook("pull_request", PullRequest)
  end
end
