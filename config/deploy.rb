# config valid for current version and patch releases of Capistrano
lock '3.19.1'


set :application, "linodeblog"
set :repo_url, "git@github.com:IBUNHABIBU/linodeblog.git"

# set :rbenv_type, :user
# set :rbenv_ruby, '3.3.3'

# config/deploy.rb



set :default_env, {
  'SECRET_KEY_BASE' => '52bb4e00e6fc2e41a6b52e1c842cc2508fc08e40945c56090b4a3f73239d63fc92c74fd66c94f4b976c8dafd4f8a0c4e1d7215932fa7013346c895d5085010fa
',
  'PATH' => "/home/deployer/.asdf/shims:/home/deployer/.asdf/bin:$PATH",
  'RAILS_ENV' => 'production'
}

# Deploy to the user's home directory
set :deploy_to, "/home/deployer/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, ENV['BRANCH'] || 'main'
# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "tmp/webpacker", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure