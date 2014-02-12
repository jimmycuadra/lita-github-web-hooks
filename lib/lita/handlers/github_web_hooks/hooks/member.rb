module Lita::Handlers
  module GitHubWebHooks
    class Member < Hook
    end

    GitHubWebHooks.register_hook("member", Member)
  end
end
