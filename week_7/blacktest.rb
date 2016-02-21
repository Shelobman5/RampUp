def getValue(card) # Take the card and return the value
	case card % 13 # Check the whens when the modulus 13 is equal to
		when 0, 11, 12 then return 10 # if modulus is 0, 11, or 12, then the card is a 10
		when 1 then return 11 
		else return card % 13 # return the actual modulus 
	end # end case
end # end getValue	

puts getValue(1)