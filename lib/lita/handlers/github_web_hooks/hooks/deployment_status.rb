module Lita::Handlers
  module GitHubWebHooks
    class DeploymentStatus < Hook
    end

    GitHubWebHooks.register_hook("deployment_status", DeploymentStatus)
  end
end
