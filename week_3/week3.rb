# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# numbers.select do |number|
# 	puts number.even?
# end

# (1..10).each do |number|
# 	puts number
# end

# ~~~~~~~~~~~~~~Leap Year Challenge~~~~~~~~~~~~~~~

# def leap_year
# 	puts "This program will show you all of the leap years between any two given years!"
# 	puts "What is your starting year?"
# 	year1 = gets.chomp.to_i
# 	puts "What is your ending year?"
# 	year2 = gets.chomp.to_i

# 	(year1..year2).each do |number|
# 		if (number % 400 == 0) || (number % 100 != 0 && number % 4 == 0)
# 			puts "#{number} leap!"
# 		end
# 	end
# end

# leap_year

# ~~~~~~~~~~~~Encrypt/Decrypt Lab~~~~~~~~~~~~~

# ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

# # puts ALPHABET.split('').shuffle.join # result= mWbDlqOtwaMhNkBzpHJicuRfsLSdCZKXAUonIvPgVGEexyjTYrQF

# ENCRYPTION = "mWbDlqOtwaMhNkBzpHJicuRfsLSdCZKXAUonIvPgVGEexyjTYrQF"

# def encrypt(string)
# 	puts string.tr(ALPHABET, ENCRYPTION)
# end

# def decrypt(string)
# 	puts string.tr(ENCRYPTION, ALPHABET)
# end

# encrypt("Stefan")

# decrypt("xilqmk")

# ~~~~~~~~~~~~~~~Caesar Cipher~~~~~~~~~~~~~~~

def cipher(string, num)
	alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a) # Turn the ranges into arrays 
	new_word = ""

	string.each_char do |i|
		if !alphabet.include?(i) # If there is a character not found in the alphabet arrays, keep it
			new_word += i 
		else
			new_word += alphabet[alphabet.index(i) - num] # Find the character in the alphabet array and subtract the given num to create the new_word
		end
	end

	return new_word.upcase.capitalize

end

puts cipher("Ruby is fun!", 18)


