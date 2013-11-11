
require 'nokogiri'
require 'open-uri'

require 'OTSABusDelay'

class OTSAParser
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
				delay = OTSABusDelay.new(fields)
				delays << delay
			end
			puts "Returning: ", delays
			delays
		end
end
