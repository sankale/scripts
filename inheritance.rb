class Thing
	def initialize( aName, aDescription )
		@name = aName
		@description = aDescription
	end
	
	def get_name
		return @name
	end
	
	def set_name( aName )
		@name = aName
	end
	
	def get_description
		return @description
	end
end

Class Treasure < Thing  #Treasure descentds from Thing
	def initialize( aName, aDescription, aValue )
		super( aName, aDescription )
		@value = aValue
	end
	
	def get_value
		return @value
	end
	
	def set_value( aValue)
		@value= aValue
	end
end

#This is where our program starts...
