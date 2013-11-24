class BusDelaysController < ApplicationController
		def index
			@bus_delays_date = params[:bus_delays_date]
			if @bus_delays_date.nil?
					@bus_delays_date = Date.current
			end
            @delays = BusDelay.find(:all, :conditions => { date: @bus_delays_date })
			if @delays.nil?
					@delays = []
			end
			@delays
		end

#		def show
#			@route = BusRoute.find_by routeId: params[:id]
#			@delays = @route.bus_delays
#		end
end
