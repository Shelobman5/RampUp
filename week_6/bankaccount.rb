class Account
  
  def initialize
    puts "Welcome #{@name}"
    @name = "Stefan"
    @balance = 1000
    display_balance
    
  end
  
  def display_balance
    puts "Please enter your pin:"
    @pin_number = gets.chomp.to_i
    puts @pin_number == pin ? "Balance: $#{@balance}." : pin_error
    withdraw
  end
  
  def withdraw
    puts "How much do you want to withdraw?"
    @amount = gets.chomp.to_i
    if @pin_number == pin
      @balance -= @amount
      puts "Withdrew #{@amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
    deposit
  end
  
  def deposit
    puts "How much do you want to deposit?"
    @damount = gets.chomp.to_i
    @balance += @damount
    puts "Deposited #{@damount}. New balance: $#{@balance}."
  end

  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new

