# usage of super

class Class1
	def initialize( a, b, c)
		@a = a
		@b = b
		@c = c
	end
end

class Class2 < Class1
	def initialize( a, b, c, d, e, f)
		super( a, b, c )
	end
end

class Class3 < Class1
	def initialize( a, b, c )
		super
	end
end

class Class4 < Class1
	def initialize( a, b, c )
		#super () #no args. it will give you a error
	end
end

c1 = Class1.new( 1, 2, 3 )
c2 = Class2.new( 1, 2, 3, 4, 5, 6)
c3 = Class3.new( 1, 2, 3 )
c4 = Class4.new( 1, 2, 3 )
p( c1 )
p( c2 )
p( c3 )
p( c4 )