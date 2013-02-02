require 'sinatra'

get '/' do
	send_file 'views/app.html'
end
