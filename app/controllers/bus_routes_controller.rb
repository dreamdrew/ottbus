class BusRoutesController < ApplicationController
		def index
			@routes = BusRoute.all.order('bus_routes.routeName, bus_routes.routeId')
		end

		def show
			@route = BusRoute.find_by routeId: params[:id]
			@delays = @route.bus_delays
		end
end
