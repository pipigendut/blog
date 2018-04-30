#!/usr/bin/env puma

directory '/var/deploy/dexcode/current'
rackup "/var/deploy/dexcode/current/config.ru"
environment 'production'

pidfile "/var/deploy/dexcode/shared/puma.pid"
state_path "/var/deploy/dexcode/shared/puma.state"
stdout_redirect '/var/deploy/dexcode/shared/log/puma_access.log', '/var/deploy/dexcode/shared/log/puma_error.log', true


threads 4,16

bind 'unix:///var/deploy/dexcode/shared/puma.sock'
workers 2



preload_app!
