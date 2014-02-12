module Lita::Handlers
  module GitHubWebHooks
    class PullRequestReviewComment < Hook
    end

    GitHubWebHooks.register_hook("pull_request_review_comment", PullRequestReviewComment)
  end
end
