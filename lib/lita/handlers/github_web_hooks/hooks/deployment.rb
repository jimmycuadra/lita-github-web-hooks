module Lita::Handlers
  module GitHubWebHooks
    class Deployment < Hook
    end

    GitHubWebHooks.register_hook("deployment", Deployment)
  end
end
