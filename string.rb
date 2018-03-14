# String

class Myclass
	attr_accessor :name
	attr_accessor :number
	
	def initialize ( aName, aNumber )
		@name = aName
		@number = aNumber
	end
	
	def ten
		return 10
	end
end

ob = Myclass.new("James Bond", "007")
puts( %Q/Double-quoted: My name is #{ob.name} and my number is #{ob.number}/ )
puts( %/Here's the tab\b a new line\na calculation #{2*3} and a method-called #{ob.ten}/ )
puts( %q/single-quoted: My name is #{ob.name} and my number is #{ob.number}/ )
puts( %q/Here\'s a tab\ta new line\na calculation #{2*3} and a method called/ )


#Double quatations necesaary while calling class using object