class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    sleep 10
    logger.info "Just waited 10 seconds."
  end
end
