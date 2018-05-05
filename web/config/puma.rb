# Workers and threads
workers 1
threads 5, 5

# Base folder
app_dir = File.expand_path('../..', __FILE__)

# Environment
environment ENV.fetch("RAILS_ENV") { "development" }

# Logging
stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true

bind "unix://#{app_dir}/sockets/puma.sock"

# reduces the startup time of individual Puma worker processes
preload_app!

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    config = ActiveRecord::Base.configurations[Rails.env] || Rails.application.config.database_configuration[Rails.env]
    ActiveRecord::Base.establish_connection(config)
  end
end

plugin :tmp_restart
