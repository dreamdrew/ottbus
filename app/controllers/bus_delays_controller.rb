class BusDelaysController < ApplicationController
		def index
            @delays = BusDelay.find_by date: Date.current
			#.order('bus_delays.route.routeName')
		end

#		def show
#			@route = BusRoute.find_by routeId: params[:id]
#			@delays = @route.bus_delays
#		end
end
