module Lita::Handlers
  module GitHubWebHooks
    class Follow < Hook
    end

    GitHubWebHooks.register_hook("follow", Follow)
  end
end
