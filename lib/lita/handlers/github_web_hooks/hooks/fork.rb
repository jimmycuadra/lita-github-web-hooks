module Lita::Handlers
  module GitHubWebHooks
    class Fork < Hook
    end

    GitHubWebHooks.register_hook("fork", Fork)
  end
end
