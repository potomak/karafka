module Karafka
  module Workers
    # Worker wrapper for Sidekiq workers
    class Sidekiq < Karafka::BaseWorker
      include ::Sidekiq::Worker
    end
  end
end
