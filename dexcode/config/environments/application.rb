# config/environments/application.rb
# These are the defaults if you dont specify any yourself
MyApp::Application.configure do
  # Settings for the pool of renderers:
  config.react.server_renderer_pool_size  ||= 1  # ExecJS doesn't allow more than one on MRI
  config.react.server_renderer_timeout    ||= 20 # seconds
  config.react.server_renderer = React::ServerRendering::SprocketsRenderer
  config.react.server_renderer_options = {
    files: ["react-server.js", "components.js"], # files to load for prerendering
    replay_console: true,                 # if true, console.* will be replayed client-side
  }
end
