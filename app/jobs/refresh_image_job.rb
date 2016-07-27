class RefreshImageJob # This is a Sidekiq job, not the normal ActiveJob, beacuse of scheduling
  include Sidekiq::Worker
  def perform
    Rails.logger.info '===== Img refreshing ======'

    all_numbers = (1..ENV['MAX_IMAGE_NAME'].to_i).to_a
    all_numbers = all_numbers - Image.all.map{ |i| i.name.to_i }
    random_name = all_numbers.sample

    if random_name.present? && DateTime.now >= DateTime.civil(2016, 8, 1)
      Image.create!(date: Date.today, name: random_name)
    end

    Rails.logger.info "===== Img refreshed ======"
  end
end
