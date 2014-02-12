module Lita::Handlers
  module GitHubWebHooks
    class Gist < Hook
    end

    GitHubWebHooks.register_hook("gist", Gist)
  end
end
