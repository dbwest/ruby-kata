require 'sinatra/base'

class VendingMachineController < Sinatra::Base
	get '/' do
		haml :index
	end
end
