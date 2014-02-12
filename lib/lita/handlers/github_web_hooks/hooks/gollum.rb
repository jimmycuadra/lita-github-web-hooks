module Lita::Handlers
  module GitHubWebHooks
    class Gollum < Hook
    end

    GitHubWebHooks.register_hook("gollum", Gollum)
  end
end
