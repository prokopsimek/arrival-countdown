class PingJob # This is a Sidekiq job, not the normal ActiveJob, beacuse of scheduling
  include Sidekiq::Worker
  def perform
    Rails.logger.info "===== Job server is working #{DateTime.now} ======"
  end
end
