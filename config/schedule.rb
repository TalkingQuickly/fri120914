set :output, "#{path}/log/cron_log.log"
env :PATH, ENV['PATH']
env :RAILS_ENV, ENV['RAILS_ENV']


every 1.minutes, roles: [:primary]  do
  command "cd #{path}/backup && RAILS_ENV=#{RAILS_ENV} bundle exec backup perform -t rails_database --config_file ./config.rb"
end
