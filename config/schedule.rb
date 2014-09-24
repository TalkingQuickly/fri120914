set :output, "#{path}/log/cron_log.log"
env :PATH, ENV['PATH']

every 2.minutes do
  command "cd #{path}/backup && RAILS_ENV=#{fetch(:whenever_environment)} bundle exec backup perform -t rails_database --config_file ./config.rb"
end
