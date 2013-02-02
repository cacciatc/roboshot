require './app'
require './api'

use Rack::Static, :urls => ["img","css","js"], :root => "public"
run Rack::URLMap.new  "/" => Sinatra::Application, "/api" => API::Robotshot
