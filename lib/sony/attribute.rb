module Sony
	class Attribute
		attr_accessor :urn, :value

		def initialize(urn, value = nil)
			self.urn = urn
			self.value = value
		end

		def to_s
			"#{urn} = #{value}"
		end
	end
end
