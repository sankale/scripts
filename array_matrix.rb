

def hello
	return "hello world"
end

x = [1+2, hello, `dir`]
puts(x.inspect)

y = %w( this is an array of strings )
puts(y.inspect)

a = Array.new
puts("Array.new : " << a.inspect)

a = Array.new(2)
puts("Array.new(2) : " << a.inspect)

a = Array.new(2,"hello world")
puts(a.inspect)

a = Array.new(2)
a[0]= Array.new(2,'hello')
a[1]= Array.new(2,'world')
puts(a.inspect)

a = [	[1,2,3,4],
		[5,6,7,8],
		[9,10,11,12]]
puts(a.inspect)

a = Array.new([1,2,3])
puts(a.inspect)

#Note: in the above example, if you pass an array to new() without
#putting it in round brackets, you must leave a space between
#'new' and the opening square bracket.
#This works:
#	a = Array.new [1,2,3]
#This doesn't
#	a = Array.new[1,2,3]