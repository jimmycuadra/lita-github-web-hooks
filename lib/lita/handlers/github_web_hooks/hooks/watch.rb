module Lita::Handlers
  module GitHubWebHooks
    class Watch < Hook
    end

    GitHubWebHooks.register_hook("watch", Watch)
  end
end
