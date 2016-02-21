puts "Welcome to Blackjack!"
def main
	@deck = (1..52).to_a.shuffle # Create a random deck
	@playerhand = [@deck.pop, @deck.pop] # player hand - initial. pop method pulls the last card from the shuffled deck
	@dealerhand = [@deck.pop, @deck.pop] # dealer hand - initial.
	puts "You have a #{identCard(@playerhand[0])} and a #{identCard(@playerhand[1])} for a score of " + scoreHand(@playerhand).to_s 
	puts "Dealer shows #{identCard(@dealerhand[0])}"
	loop do
		puts "Would you like to hit or stay?"
		answer = gets.downcase.chomp #  downcase any answer entered
		case 
			when answer == "hit"
				playerHit
				# brake if scoreHand(@playerhand) > 21
			when answer == "stay"
				playerStay
				break
		end # end case
	end # end loop
	puts "Would you like to play again (y/n)?"
	replay = gets.downcase.chomp
	main if replay == "y" # re-run the main method from beginning if yes
end # end main

def getValue(card) # Take the card and return the value
	case card % 13 # Check the whens when the modulus 13 is equal to
		when 0, 11, 12 then return 10 # if modulus is 0, 11, or 12, then the card is a 10
		when 1 then return 11 
		else return card % 13 # return the actual modulus 
	end # end case
end # end getValue	

def identCard(card) # identifies the face and suit of card
	suit = (case (card - 1) / 13
		when 0 then " of hearts"
		when 1 then " of clubs"
		when 2 then " of diamonds"
		when 3 then " of spades"
		else raise StandardError 
	end) #end case
	case card % 13
		when 1 then return "Ace" + suit
		when 11 then return "Jack" + suit
		when 12 then return "Queen" + suit
		when 0 then return "King" + suit
		else return (card % 13).to_s + suit
		end # end case
end # end identCard

def scoreHand(hand) # identifies the score of the whole hand
	total = 0
	aceCount = 0
	hand.each do |i|
		aceCount += 1 if i % 13 == 1 
		total += getValue(i)
		while total > 21 do 
			if aceCount > 0 then
				total = total - 10
				aceCount -= 1
			end # end if
		break if aceCount == 0
		end # end while
	end	# end do
	total
end # end scoreHand	

def playerHit
	@playerhand << @deck.pop
	puts "You drew the " + identCard(@playerhand[@playerhand.length - 1])
	puts "Your score is now " + scoreHand(@playerhand).to_s
	puts "You lose!" if scoreHand(@playerhand) > 21
end # end playerHit

def playerStay
	puts "You stay with a score of " + scoreHand(@playerhand).to_s
	puts "Dealer shows the " + identCard(@dealerhand[0]).to_s + " and the " + identCard(@dealerhand[1]).to_s + " for a score of " + scoreHand(@dealerhand).to_s
	puts "Dealer stays " if scoreHand(@dealerhand) > 16
	while scoreHand(@dealerhand) < 17
		@dealerhand << @deck.pop
		puts "Dealer drew the #{identCard(@dealerhand[@dealerhand.length - 1])}"
		puts "Dealer's score is now #{scoreHand(@dealerhand).to_s}"
		puts "Dealer busts!" if scoreHand(@dealerhand) > 21
	end # end while
	if scoreHand(@dealerhand) > scoreHand(@playerhand) && scoreHand(@dealerhand) < 22 then puts "You lose!"
	elsif scoreHand(@dealerhand) < scoreHand(@playerhand) || scoreHand(@dealerhand) > 21 then puts "You win!"
	else puts "It's a Draw!"
	end # end if
end # end playerStay
main














