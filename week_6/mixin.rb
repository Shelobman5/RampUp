module Cars

	def drive
		puts "What car do you want to drive?"
		input = gets.chomp
		if input.include?("T")
			puts "Wow! #{input} is a great car!"
		else
			puts "NOPE!"
		end
	end
end

module SayThings

	def say_hello
		puts "Hola"
	end

end

class Person
	include SayThings
	include Cars
end

stefan = Person.new
stefan.say_hello
stefan.drive
