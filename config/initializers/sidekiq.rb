require 'sidekiq/web'

# If we are in development, connect to the knowspread-poc redis
# compute redis connections sizes: http://manuel.manuelles.nl/sidekiq-heroku-redis-calc/
if Rails.env.development?
  redis_url = 'redis://127.0.0.1:6379'
  redis_client_size = 1
  redis_server_size = 11
else
  redis_url = ENV['REDIS_URL']
  redis_client_size = 1
  redis_server_size = 11
end

Sidekiq.configure_client do |config|
  config.redis = { url: redis_url, size: redis_client_size }
end

Sidekiq.configure_server do |config|
  config.redis = { url: redis_url, size: redis_server_size }

  config.on(:startup) do
    Sidekiq::Scheduler.enabled = true
    Sidekiq.schedule = YAML.load_file(File.expand_path("#{Rails.root}/config/scheduler.yml", __FILE__))
    Sidekiq::Scheduler.reload_schedule!
    Rails.logger.info("Job details: #{Sidekiq.schedule}")
  end
end

# Perform Sidekiq jobs immediately in development,
# so you don't have to run a separate process.
# You'll also benefit from code reloading.
if Rails.env.test?
  require 'sidekiq/testing'
  Sidekiq::Testing.inline!
end
