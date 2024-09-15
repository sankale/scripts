# Variables
localvar = "Hello"
$globalvar = "Goodbye"

def amethod
	localvar = 10
	puts( localvar )
	puts( $globalvar )
end

def bmethod
	localvar = 500
	$globalvar = "bonjour"
	puts ( localvar )
	puts ( $globalvar )
end
def cmethod
	localvar = 1000
	$globalvar = "Hey"
	puts ( localvar )
	puts ( $globalvar )
end
amethod
bmethod
cmethod
amethod
puts( localvar )
puts( $globalvar )	
