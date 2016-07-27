class RefreshImageJob # This is a Sidekiq job, not the normal ActiveJob, beacuse of scheduling
  include Sidekiq::Worker
  def perform
    Rails.logger.info '===== Img refreshing ======'

    all_numbers = (1..ENV['MAX_IMAGE_NAME'].to_i).to_a
    all_numbers = all_numbers - Image.all.map{ |i| i.name.to_i }
    random_name = all_numbers.sample

    Image.create!(date: Date.today, name: random_name) if random_name.present?

    Rails.logger.info "===== Img refreshed ======"
  end
end
