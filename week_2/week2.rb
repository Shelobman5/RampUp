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


# engine_on = true

# unless engine_on
# 	puts "The engine is off!" # Will not display anything since the engine is on
# end

# if engine_on
# 	puts "The engine is on!" 
# end

# ~~~~~~~~~~~~~~~~~~~~~Number Guessing Game~~~~~~~~~~~~~~~~~~~~~

# num = rand(1..100)
# num_guesses = 0

# puts "I'm thinking of a number betweeen 1 and 100."


# loop do
# 	puts "Can you guess which number I'm thinking of?"
# 	guess = gets.chomp.to_i
# 	num_guesses += 1
# 	if guess > num
# 		puts "Too high!"
# 	elsif guess < num 
# 		puts "Too low!"
# 	else
# 		puts "You've got it!"
# 	end
# 	break if num_guesses == 5
# end

# ~~~~~~~~~~~~~~~~Lab Problem 1~~~~~~~~~~~~~~~~~~

# Write a program that prints out the complete lyrics to “99 bottles of beer on the wall.”

# bottles = 100

# until bottles == 0
# 	bottles -= 1
# 	if bottles == 99
# 		puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer! Take one down pass it around!"
# 	elsif bottles == 1
# 		puts "#{bottles} bottle of beer on the wall. #{bottles} bottle of beer on the wall, #{bottles} bottle of beer! Take one down pass it around!"
# 	elsif bottles == 0
# 		puts "No more bottles of beer on the wall. No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
# 	else 
# 		puts "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer on the wall, #{bottles} bottles of beer! Take one down pass it around!"
# end
# end

# bottles = 99

# while bottles < 100
# 	bottles -= 1
# 	if bottles == 99
# 		puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer! Take one down pass it around!"
# 	elsif bottles < 99
# 		puts "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer on the wall, #{bottles} bottles of beer! Take one down pass it around!"
# 	elsif bottles == 0
# 		puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
# 	else break
# end
# end

# ~~~~~~~~~~~~~~~~Lab Problem 2~~~~~~~~~~~~~~~~~~

# Write a Deaf Grandma program. Whatever you say to grandma(user input) she should respond with HUH?!, SPEAK UP SONNY!, unless you shout it(type in all CAPS).
# If you shout, she can hear you and yells back NO, NOT SINCE 1938! Grandma should shout a different year each time; random between 1930 to 1980. 
# You can’t stop talking to grandma until you shout BYE.

# puts "HELLO SON! HOW ARE YOU?"
# response = gets.chomp

# until response == "BYE"
# 	year = rand(1930..1980)
# 	if response == response.upcase
# 		puts "NO NOT SINCE #{year}" 
# 	else
# 		puts "HUH?!, SPEAK UP SONNY!"
# 	end
# 	response = gets.chomp
# end

# def grandma
# 	year = rand(1930..1980)
# 	puts "HELLO SON! HOW ARE YOU?"
# 	response = gets.chomp
# 	if response == response.upcase
# 		puts "NO NOT SINCE #{year}" 
# 	else
# 		puts "HUH?!, SPEAK UP SONNY!"
# 	end
# end

# grandma

# ~~~~~~~~~~~~~~~~Lab Problem 3~~~~~~~~~~~~~~~~~~

# Add on to the above. Grandma really loves your company and doesn’t want you to go unless you shout BYE three times in a row. 
# So if you say BYE twice and then something else you have to say BYE three times again.

# puts "TALK TO ME! SO LONELY!\n\n"
# bye = 0
# while bye < 3
#   response = gets.chomp
#   if response == "BYE"
#     puts "STAY AWHILE!?!"
#     bye = (bye+1)
#   elsif response == response.upcase
#     puts "NO! NOT SINCE #{1910+rand(41)}!"
#     bye = 0
#   else
#     puts "Huh?! I CAN'T HEAR YOU!"
#     bye = 0
#   end
# end


puts "HELLO SON! WHAT'S UP?"
goodbye = 0

while goodbye != 3 
	response = gets.chomp
	year = rand(1930..1980)
	if response == "BYE"
		puts "WHAT?"
		goodbye += 1
	elsif response == response.upcase
		puts "NO NOT SINCE #{year}"
		goodbye = 0
	else
		puts "HUH?!, SPEAK UP SONNY!"
		goodbye = 0
	end
end

# ~~~~~~~~~~~~~~Gold Problems~~~~~~~~~~~~~~~~~~

# def price_of_gold(oz)
# 	price = oz * 1092
# 	puts price
# end

# def price_of_gold_from_pounds(pounds)
# 	amount = pounds.to_f * 16
# 	price_of_gold(amount)
# end

# price_of_gold_from_pounds(30)


# def price_of_gold_from_kilograms(kilograms)
# 	amount = kilograms.to_f * 35.274
# 	price_of_gold(amount)
# end

# price_of_gold_from_kilograms(30)

# ~~~~~~~~~~~~~Interesting Methods~~~~~~~~~~~~~~

# # string method: center

# "Stefan".center(18, 444)

# # integer method: round

# 1.round(2)

# 25.round(-1)







