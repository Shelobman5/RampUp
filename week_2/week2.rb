# puts "What is your name?"

# name = gets.chomp

# if name == "Stefan"
# 	puts "That is CORRECT!"
# else
# 	puts "That is WRONG!"
# end

# def greeter
# 	puts "What is your name?"
# 	name_comparison
# end

# def name_comparison
# 	name = gets.chomp
# 	if name == "Stefan"
# 		puts "That is CORRECT!"
# 	else
# 		puts "That is WRONG!"
# 	end
# end

# greeter

# def name_clear
# 	puts "What is your name?"
# 	name = gets.chomp
# 	if name == "Stefan"
# 		puts "YES!"
# 		elsif name == "Peter"
# 			puts "Last name Jackson?"
# 		else
# 			puts "No way!!"
# 	end
# end

# name_clear	

# puts "What is your name?"
# name = gets.chomp
# if name == "Stefan" then puts "Great Name!" end

# puts "What is your name?"
# name = gets.chomp

# number = 0

# while number < 10
# 	puts number
# 	number +=1
# end

# days_left = 7

# until days_left == 0 
#    puts "There are still #{days_left} days left in the week"
#    days_left -= 1
# end

#~~~~~~~~~~~~~~~~~~~~~~~~~~Interactive Story Game~~~~~~~~~~~~~~~~~~~~~~~~

# def story_game
# 	puts "You’re a traveler on a long journey. After many miles, you come to a fork in the road. 
# 	To the North is a small village.  To the East is dark cave. Which way do you go? North or East?"
# 	story_answer
# end

# def story_answer
# 	answer = gets.chomp
# 	if answer == "North"
# 		puts "You’re going to the small village!"
# 	elsif answer == "East"
# 		puts "You’re going to the dark cave!"
# 	else
# 		puts "Where are you going?"
# 	end
# end

# story_game

#~~~~~~~~~~~~~~~


# puts "How old are you?"
# age = gets.chomp.to_i

# age = 15
# case
# when age == 15
#     					puts "I’m 15 too!"
# when age == 14
#    					  puts "You’re one year younger than me"
# when age == 16
#    					  puts "you’re one year older than me"
# when age < 14
#    					  puts "you’re just too young"
# end


engine_on = true

unless engine_on
	puts "The engine is off!" # Will not display anything since the engine is on
end

if engine_on
	puts "The engine is on!" 
end

