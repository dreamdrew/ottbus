class BusRoute < ActiveRecord::Base
		self.primary_key = "routeId"
		has_many :bus_delays
end
