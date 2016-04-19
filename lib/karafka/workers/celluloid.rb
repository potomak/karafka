module Karafka
  module Workers
    # Worker wrapper for Celluloid workers
    class Celluloid < Karafka::BaseWorker
      # Mock Sidekiq worker class API.
      def self.perform_async(*args)
        puts "CELLULOID.PERFORM_ASYNC args: #{args}"
        self.new.perform(*args)
      end
    end
  end
end
