require 'nokogiri'
require 'open-uri'

class OSTAParser
		def initialize
		end

		def parse(uri)
			delays = []
			doc = Nokogiri::HTML(open(uri))
			doc.css('td.grid').each do |grid|
				parent = grid.parent
				fields = []
				parent.children.each do |child|
					contentChild = child.children[0]
					if not contentChild.nil?
						fields << contentChild.content
					end
				end
				bus_route_id = fields[0]
				begin
					route = BusRoute.find bus_route_id
				rescue ActiveRecord::RecordNotFound
					route = BusRoute.new
					route.routeId = bus_route_id
					route.routeName = fields[3]
					route.busCompany = fields[2]
					route.save
				end
				delay = BusDelay.find_by bus_route_id: bus_route_id,
						direction: fields[1], 
						date: Date.current
				if delay.nil?
					delay = BusDelay.new
					delay.bus_route_id = fields[0]
					delay.direction = fields[1]
					delay.date = Date.current
					delay.originalTime = fields[4]
                	delay.delayedMins = fields[5]
			    	delay.reason = fields[6]
			    	delay.posted = DateTime.current
					delay.save
				end
				delays << delay
			end
			delays
		end
end
