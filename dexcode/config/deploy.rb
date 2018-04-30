# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'dexcode'
set :repo_url, 'git@gitlab.com:dexcode/dexcode.git'
set :branch, 'master'
set :scm, :git

set :rvm_ruby_version, '2.2.2'

set :user, "deploy"
set :use_sudo, false
set :deploy_to, '/var/deploy/dexcode'
set :deploy_via, :remote_cache

set :linked_files, %w{env Procfile config/database.yml config/puma.rb}
set :linked_dirs, %w{log tmp/cache tmp/sockets tmp/pids public/assets public/uploads}

after 'deploy:finished', 'foreman:restart'
