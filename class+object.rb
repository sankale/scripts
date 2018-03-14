class Dog
	def	set_name( aName )
		@myname = aName
	end
	
	def get_name
		return @myname
	end
	
	def talk
		return 'woof!'
	end
end

class Cat
	def set_name( aName )
		@myname = aName
	end
	
	def get_name
		return @myname
	end
	
	def talk
		return 'Maow!'
	end
end

# --- Create instances  (Objects) of the Dog and Cat classes

mydog = Dog.new
yourdog = Dog.new
mycat = Cat.new
yourcat = Cat.new
someotherdog = Dog.new

# --- Name them
mydog.set_name( 'Fido' )
yourdog.set_name( 'Bonzo' )
mycat.set_name( 'Tiddles' )
yourcat.set_name( 'Flossy' )

# --- Get their names and display them
#Dogs
puts("my dog name is #{mydog.get_name}")
puts("your dog name is #{yourdog.get_name}")
#cat
puts("my cat name is #{mycat.get_name}")
puts("your cat name is #{yourcat.get_name}")

# --- Ask them to talk
puts(mydog.talk)
puts(yourdog.talk)
puts(mycat.talk)
puts(yourcat.talk)
