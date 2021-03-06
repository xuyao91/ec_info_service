# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'app'
set :port, 0000
set :repo_url, 'xxxxxxx'
set :deploy_to, 'xxxxxxx'

set :rack_env, :xxx
set :unicorn_config_path, "#{shared_path}/xxxxxxxx.rb"
set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  after 'deploy:publishing', 'deploy:restart'

  desc 'Start application'
  task :start do
    on roles(:app), in: :sequence, wait: 5 do
      #run "cd #{current_path} && bundle exec unicorn -c #{unicorn_conf} -E #{rack_env} -D"
      invoke 'unicorn:start'
    end
  end
end
