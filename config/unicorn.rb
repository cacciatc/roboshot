configure :production do
  require 'newrelic_rpm'
end

::NewRelic::Agent.after_fork(:force_reconnect => true) if defined? Unicorn
worker_processes 6
timeout 30
preload_app true
