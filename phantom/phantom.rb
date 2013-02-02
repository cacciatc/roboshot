module Phantomjs
	# all paths are relative for this method to be called from the api.rb
	def self.run_phantom(*args)
		exe = 'bin/phantom32/bin/phantomjs'
		if ENV['RACK_ENV'] == 'production'
			exe = 'bin/phantom64/bin/phantomjs'	
		end
		`#{exe} "phantom/script.js" #{args.join(' ')}`
	end
end
