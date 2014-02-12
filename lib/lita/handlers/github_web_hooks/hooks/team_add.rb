module Lita::Handlers
  module GitHubWebHooks
    class TeamAdd < Hook
    end

    GitHubWebHooks.register_hook("team_add", TeamAdd)
  end
end
