require 'grape'
require './phantom/phantom'

module API
	class Roboshot < Grape::API
		version "v1", :using => :header, :vendor => "Scrnshot"
		format :json

		resource :pics do
			desc "Takes and returns a screenshot"
			params do
				requires :url, :type => String, :desc => "Target URL."
			end
			post do
				fname = "tmp/#{Time.now.to_i}.png"
				Phantomjs.run_phantom params[:url], fname
				fname
			end
		end
	end
end
