class BusRoutesController < ApplicationController
		def index
			@routes = BusRoute.find :all
		end

		def show
			@route = BusRoute.find_by routeId: params[:id]
			@delays = @route.bus_delays
		end
end
