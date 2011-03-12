module Sony
	class Item
		attr_accessor :urn, :item_type, :attributes

		def initialize(item_type, urn = nil)
			self.item_type = item_type
			self.urn = urn
			@attributes = {}
		end

		def [](attr_urn)
			@attributes[attr_urn]
		end

		def []=(attr_urn, value)
			@attributes[attr_urn] ||= Attribute.new(attr_urn)
			@attributes[attr_urn].value = value
		end

		def main_item?
			!urn.nil?
		end

		def to_s
			buf = "Item [#{item_type}" + (main_item? ? " - #{urn}" : "") + "]\n"
			buf += attributes.values.collect {|v| "\t#{v}\n" }.join
		end
	end
end
