module Lita::Handlers
  module GitHubWebHooks
    class Status < Hook
    end

    GitHubWebHooks.register_hook("status", Status)
  end
end
