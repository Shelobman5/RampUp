# class Person

# 	def talk
# 		puts "I'm now talking!"
# 	end

# 	def eat 
# 		puts "I'm eating!"
# 	end

# 	def sleep
# 		puts "I'm sleeping"
# 	end

# 	def pay_taxes
# 		puts "OH NO!"
# 	end
# end

# class Dog
# 	def bark
# 		puts "WOOF!"
# 	end

# 	def eat
# 		puts "Yum!"
# 	end

# 	def run
# 		puts "Chansing cats!"
# 	end
# end

# # joe = Person.new

# # joe.talk
# # joe.eat
# # joe.sleep
# # joe.pay_taxes

# violet = Dog.new
# violet.eat
# violet.sleep

# class Golf

# 	def driver
# 		puts "How far can you go?"
# 		input = gets.chomp
# 		puts "#{input} is far!"
# 	end

# 	def iron 
# 		puts "Are you in the tall grass?"
# 		input = gets.chomp
# 		puts "You're #{input} in the tall grass!"
# 	end

# 	def putter
# 		puts "Will you use the birdie stick?"
# 		input = gets.chomp
# 		puts "That's great!"
# 	end

# 	def hybrid
# 		puts "Too difficult to use!"
# 	end
# end


# play = Golf.new

# play.putter


# class Person
# 	def say_this(input)
# 		puts input
# 	end
# end

# say_this("What?")

# class Person
# 	def initialize(name, age, location)
# 		puts "Hey I'm #{name}. I'm #{age} years young! I live in #{location}!"
# 	end
# end

# joe = Person.new("Joe", "27", "Chicago,IL")


# class Golf
# 	def initialize(club, distance, dif_level)
# 		puts "I'm using the #{club} with a distance of #{distance} and it's #{dif_level} to use!"
# 	end
# end

# stefan = Golf.new("Driver", "300yds", "Hard")

# class Pigeon
# 	def initialize(speed, weight, personality)
# 		@speed = speed
# 		@weight = weight
# 		@personality = personality
# 		puts "Pigeons are underrated"
# 		how_fast
# 		how_heavy
# 		pigeon_persona
# 	end

# 	def how_fast 
# 		puts "Pigeons are fast! This pigeon travels at #{@speed} mph!"
# 	end

# 	def how_heavy
# 		puts "Pigeons are light! This pigeon weighs #{@weight} lbs!"
# 	end

# 	def pigeon_persona
# 		puts "This pigeon is #{@personality}!"
# 	end
# end

# feisty = Pigeon.new(50, 0.2, "plucky")

# ~~~~~~~~~~~Getter~~~~~~~~~~~~~~~
class Person
	def initialize(name)
		@name = name
	end

	def name 
		@name
	end

end

student = Person.new("Stefan")
puts Person.new

# ~~~~~~~~~~~Setter~~~~~~~~~~~~~

class Person
	def name
		@name
	end

	def name=(name)
		@name = name
	end
end
