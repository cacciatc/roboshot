require './app'
require './api'

use Rack::Static, :urls => ["img","css","js"], :root => "public"
use Rack::Static, :urls => ["tmp"], :root => "/tmp"
run Rack::URLMap.new  "/" => Sinatra::Application, "/api" => API::Scrnshot
