desc "This task is called by the Heroku scheduler add-on"
task :update_img => :environment do
  puts "Updating img in rake task..."
  NewImageJob.perform_async
  puts "done."
end
