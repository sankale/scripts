h1 = {
		'room1'=>'The Treasure Room',
		'room2'=>'The Throne Room',
		'loc1'=>'A Forest Glade',
		'loc2'=>'A mountain Stream'
	}

h2 = {1=>'one', 2=>'two', 3=>'three'}
h3 = {6=>'six', 5=>'five', 4=>'four'}

# A complicated hash!
multihash = {
				'name' => 'Multi-Hash',
				'array' => ['one', 'two', 'three', 'four'],
				'nested array' =>
						["I",
							[
							"wandered","lonely","as",
								["a","cloud"]
							]
						],
					'nested hash' => {'a' => 'hi','b' => 'goodbye'}
			}
@linenum = 0
def wr( exp )
	@linenum += 1
	print( "(\##{@linenum})" )
	p( exp )
end

#Testing various hash methods. Compare output
#with the numbered tests
h1['room1'] = 'You have wandered into a dark room'
wr(h1)
h1.delete('loc2')
wr(h1)
wr(h1.has_key?('loc2'))
wr(h2.has_value?("two"))
wr(h2.index("two"))
wr(h2.invert)
wr(h2.keys)
wr(h2.values)
hnew = h2.merge(h3)
wr(hnew)
wr(hnew.sort)
wr(multihash.to_a)
wr(multihash.to_a.flatten)
multihash.clear
wr(multihash)


