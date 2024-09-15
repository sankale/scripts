class Thing
	attr_reader :name, :description
	attr_writer(:name, :description)
	attr_accessor(:value, :id, :owner)
end

t=Thing.new
t.name = "A thing"
t.description = "A soft, furry wotsit"
t.value = 100
t.id = "TH100SFW"
t.owner = "Me"
puts("#{t.name} is #{t.description}, it is worth #{t.value}")
puts("it's id is #{t.id}. It is owned by #{t.owner}.")