require "./saythings.rb"
require "./cars.rb"

class Person
	include SayThings
	include Cars
end

stefan = Person.new
stefan.say_hello
stefan.drive

