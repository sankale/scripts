# create an array with two sub-arrays - i.e. 2 'rows' each with 4 elements
multiarr = [['one', 'two', 'three', 'four'],[1,2,3,4]]

#iterate over the elements ('rows') of multiarr
puts( "for i in .. (multi-dimensional array)" )
for i in multiarr
	puts(i.inspect)
end

puts( "\nfor a, b, c, d in.. (multi-dimensional) array")
for (a,b,c,d) in multiarr
	print("a=#{a}, b=#{b}, c=#{c}, d=#{d}\n")
end