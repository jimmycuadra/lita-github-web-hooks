module Lita::Handlers
  module GitHubWebHooks
    class Issues < Hook
    end

    GitHubWebHooks.register_hook("issues", Issues)
  end
end
