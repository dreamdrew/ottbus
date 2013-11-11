
class OTSABusDelay

		def initialize(fields)
				@fields = fields
		end

		def to_s()
				str = @fields.join(',')
				puts str
				str
		end
end
