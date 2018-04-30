set :stage, :production
role :app, %w{deploy@www.dexcode.com}
role :web, %w{deploy@www.dexcode.com}
role :db,  %w{deploy@www.dexcode.com}
server 'www.dexcode.com', user: 'deploy', roles: %w{web app}
