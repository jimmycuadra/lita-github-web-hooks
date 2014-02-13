module Lita::Handlers
  module GitHubWebHooks
    class Hook
      attr_reader :payload, :robot

      def initialize(robot, payload)
        @robot = robot
        @payload = payload
      end

      def call
        targets.each { |target| robot.send_message(target, message) }
      end

      private

      def message
        raise "Must be implemented in child hook class."
      end

      def targets
        target_ids = Array(Lita.config.handlers.github_web_hooks.room_ids)
        target_ids.map { |target_id| Lita::Source.new(room: target_id) }
      end
    end
  end
end
