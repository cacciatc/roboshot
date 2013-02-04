require 'sinatra'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['sac', 'ruby']
end

get '/' do
	send_file 'views/app.html'
end
