#NOTE: you may want to print this out for ease of comparison with the output

# Some array s to play about with
arr1 = [1,1,2,2,3,3]
arr2 = [1,2,3,4,5,6,7,8,9]
arr3 = ['h','e','l','l','o',' ',nil,'w','o','r','l','d']

# an array containig several more levels of 'sub arrays'
multiarr = [
			['one','two','three','four'],
			[1,2,3,4],
				["I",
					["wandered","lonely","as",
						["a","cloud"]
					]
				]
			]

#Copies of arr1 and arr3 so that we can restore their original state after changing their contents!

copy_of_arr1 = arr1.clone
copy_of_arr3 = arr3.clone

#A utility method to print line numbers before inspecting values.
#To make it easier to match output with the numbered testes below

@linenum = 0
def wr( exp )
	@linenum += 1
	print( " \##{@linenum} " )
	p( exp )
end

#Tesing various Array methods. Compare output with the numbered tests
wr(arr1&arr2)
wr(arr1+arr2)
wr(arr1-arr2)
wr(arr2-arr1)
wr(arr1<<arr2)
wr(arr1)
arr1.clear
wr(arr1)
arr1 = copy_of_arr1
wr(arr1)
wr(arr3.compact)
arr3.delete('1')
wr(arr3)
arr3.delete_at(2)
wr(arr3)
arr3 = copy_of_arr3
wr(arr3.length)
wr(arr3.reverse)
arr3.compact!


