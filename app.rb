require 'sinatra'

get '/' do
	send_file 'views/app2.html'
end
