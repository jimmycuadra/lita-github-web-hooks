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

      def rooms
        ids = Array(Lita.config.handlers.github_web_hooks.room_ids)
        ids.map { |id| Lita::Source.new(room: id) }
      end

      def targets
        rooms + users
      end

      def users
        ids = Array(Lita.config.handlers.github_web_hooks.user_ids)
        ids.map { |id| Lita::Source.new(user: id) }
      end
    end
  end
end
