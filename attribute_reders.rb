#--- Attribute Reader and Writers

class Thing

	def initialize( aName, aDescription )
		@name = aName
		aDescription = aDescription
	end
	
	#get accessor for @name
	def name
		return @name
	end
	
	#set accessor for @name
	def name=( aName )
		@name = aName
	end
	
	#get accessor for @description
	def description
		return @description
	end
	
	#get accessor for @description
	def description=( aDescription )
		@description = aDescription
	end
end

t = Thing.new("The Thing", "a lovely, glittery wotsit")
print( t.name )
print( " is " )
puts( t.description )
t.name = "A refurbished Thing"
t.description = "a bit faded and worn around the edges"
print( "It has new chaged its name to " )
puts ( t.name )
print( "It would describe it as" )
puts ( t.description )
