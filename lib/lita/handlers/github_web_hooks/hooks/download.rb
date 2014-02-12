module Lita::Handlers
  module GitHubWebHooks
    class Download < Hook
    end

    GitHubWebHooks.register_hook("download", Download)
  end
end
