
class OTSABusDelay

		def initialize(fields)
				@fields = fields
		end

		def to_s()
				str = @fields.join(',')
		end
end
