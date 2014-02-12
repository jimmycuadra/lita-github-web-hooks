module Lita::Handlers
  module GitHubWebHooks
    class Delete < Hook
    end

    GitHubWebHooks.register_hook("delete", Delete)
  end
end
