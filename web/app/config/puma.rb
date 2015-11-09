workers 2
threads 1, 16

app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/tmp"

rails_env = ENV['RAILS_ENV'] || "development"
environment rails_env

stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true

bind "unix://#{shared_dir}/sockets/puma.sock"
pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"
activate_control_app

on_worker_boot do
  require "active_record"
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(YAML.load_file("#{app_dir}/config/database.yml")[rails_env])
end
