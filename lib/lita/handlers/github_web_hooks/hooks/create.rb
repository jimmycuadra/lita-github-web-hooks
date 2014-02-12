module Lita::Handlers
  module GitHubWebHooks
    class Create < Hook
    end

    GitHubWebHooks.register_hook("create", Create)
  end
end
