module Lita::Handlers
  module GitHubWebHooks
    class Ping < Hook
    end

    GitHubWebHooks.register_hook("ping", Ping)
  end
end
