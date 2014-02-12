module Lita::Handlers
  module GitHubWebHooks
    class Release < Hook
    end

    GitHubWebHooks.register_hook("release", Release)
  end
end
