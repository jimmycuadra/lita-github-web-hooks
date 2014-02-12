module Lita::Handlers
  module GitHubWebHooks
    class ForkApply < Hook
    end

    GitHubWebHooks.register_hook("fork_apply", ForkApply)
  end
end
