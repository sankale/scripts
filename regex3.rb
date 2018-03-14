

puts( /^[a-z 0-9]*$/ =~ 'well hello 123' )
puts( /^[a-z 0-9]*$/ =~ 'Well hello 123' )
puts( /[a-z 0-9]*$/ =~ 'Well hello 123' )

puts( /[a-z 0-9]$*$/ =~ 'Well hello 123' )
puts( /^[a-z 0-9]*/ =~ 'Well hello 123' )
puts( /^[a-z 0-9]+/ =~ 'Well hello 123' )

puts( /[a-z 0-9]*$/ =~ 'well hello 123' )


