require './app'
require './api'

require 'carrierwave'

use Rack::Static, :urls => ["img","css","js"], :root => "public"
use Rack::Static, :urls => ['/carrierwave'], :root => 'tmp'

run Rack::URLMap.new  "/" => Sinatra::Application, "/api" => API::Roboshot

CarrierWave.configure do |config|
  config.root = '/tmp'
  config.cache_dir = 'carrierwave'

  config.s3_access_key_id = ENV['s3_access_key_id']
  config.s3_secret_access_key = ENV['s3_secret_access_key']
  config.s3_bucket = ENV['s3_bucket']
end
