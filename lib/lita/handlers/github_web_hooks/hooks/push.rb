module Lita::Handlers
  module GitHubWebHooks
    class Push < Hook
    end

    GitHubWebHooks.register_hook("push", Push)
  end
end
