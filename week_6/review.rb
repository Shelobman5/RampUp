# puts numbers = (1..100).to_a.select { |num| num % 3 == 0 && num % 5 == 0}

# numbers = (1..100).to_a.select { |num| num % 3 == 0 && num % 5 == 0}
# sum = 0
# array.each do 
# 	sum += num
# end
# puts sum

# puts numbers = (1..100).to_a.select.inject(0) do |memo, num|
# memo += num if  

# numbers = [1, 2, 3, 4]

# puts numbers.inject(0) {|sum, x| sum + x}

# fav_numbers = [1, 2, 3, 4, 10, 20, 33, 35]

# array = fav_numbers.select do |number| 
# 	number.even?
# end

# puts array

# days = ["mon", "tue", "wed", "thur", "fri"]

# array = days.values_at(0, 2)

# puts array

result = []

first_names = ["Hamburglar", "Grimace", "Ronald"]
last_name = "McDonald"

first_names.map do |first| 
	result.push(first + " McDonald")
end

p result



 