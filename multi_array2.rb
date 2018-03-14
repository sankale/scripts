#loop within loop

# create an array with two sub-arrays - i.e. 2 'rows' each with 4 elements
multiarr = [['one', 'two', 'three', 'four'],[1,2,3,4]]

#iterate over the elements ('rows') of multiarr
puts( "for i in .. (multi-dimensional array)" )
for s in multiarr[0] # 'row' 0 is the first 'sub-array' : ['one', 'two', 'three', 'four']
	puts(s)
end

for s in multiarr[1] # 'row' 1 is the second 'sub-array' : [1,2,3,4]
	puts(s)
end

# iterate over each element using nested for loops
puts( "\nNested for loops..." )
for row in multiarr
	for item in row
		puts(item)
	end
end