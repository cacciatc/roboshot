require 'grape'
require './phantom/phantom'
require 'carrierwave'

module API
	class ImageUploader < CarrierWave::Uploader::Base 
  	include CarrierWave::MiniMagick
		if ENV['RACK_ENV'] == 'production'
    	storage :s3 
  	else 
    	storage :file 
  	end 
 
  	def store_dir 
    	"tmp/" 
  	end 
 
  	def extensions_white_list 
    	%w(png) 
  	end

		version :thumb do
    	process :resize_to_fill => [300,300]
	  end
	end

	class Roboshot < Grape::API
		version "v1", :using => :header, :vendor => "Roboshot"
		format :json

		resource :pics do
			desc "Takes and returns a screenshot"
			params do
				requires :url, :type => String, :desc => "Target URL."
			end
			post do
				fname = "tmp/#{Time.now.to_i}.png"
				Phantomjs.run_phantom params[:url], fname
				up = ImageUploader.new
				up.store!(File.open(fname,'rb'))
				{:url => up.url,:thumb => {:url => up.thumb.url}}.to_json
			end
		end
	end
end
