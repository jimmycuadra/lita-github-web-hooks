module Lita::Handlers
  module GitHubWebHooks
    class Hook
      def initialize(robot, payload)
        @robot = robot
        @payload = payload
      end

      private

      def targets
        target_ids = Array(Lita.config.handlers.github_web_hooks.target_ids)
        target_ids.map { |target_id| Lita::Source.new(room: target_id) }
      end
    end
  end
end
