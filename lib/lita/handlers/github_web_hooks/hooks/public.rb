module Lita::Handlers
  module GitHubWebHooks
    class Public < Hook
    end

    GitHubWebHooks.register_hook("public", Public)
  end
end
