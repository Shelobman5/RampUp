# Cars - See cars.rb for solution
# Create a quick game using anything you have learned thus far.
# Should have a Car class and you will initialize it with fuel and distance
# You should have at least two methods - drive and fuel_up. Drive should take an argument - "miles"
# You car gets 20 miles per gallon. Your gas tank holds 10 gallons. If you pass in an argument with
# more miles than you can
# drive, then you should let the user know they are out of gas.
​
# After each time you drive or fill up, you should let the user know how many miles you've driven and
# how much fuel you have left!
​
# You can also build this by asking for user input instead of using an argument.
​
# Feel free to add additional methods.

class Car

	def initialize
    @fuel = 10
    @distance = 0
  end

  def drive(miles)
    fuel_used = miles/20.0
    if (@fuel -= fuel_used) >= 0
      @distance += miles
      # @fuel -= fuel_used
      puts "You've driven #{@distance} miles and you have #{@fuel} gallons left!"
    else
      @fuel = 0
      "You're out of gas!"
      ask_to_fuel_up
    end
  end

  def ask_to_fuel_up
    puts "Would you like to fuel up? Y or N?"
    answer = gets.chomp.upcase
    if answer == "Y"
      fuel_up
    else
      puts "Good luck!"
    end
  end  

  def fuel_up
    puts "How much gallons would you like?"
    amount = gets.chomp.to_i
    @fuel += amount
    puts "You now have #{@fuel} gallons of gas!"
  end

end

  teslax = Car.new
  teslax.drive(219)