require "rubygems"
require "firebase"



def initializer
	@sleep_debt = 0
	@total_debt = 0
	sleep_entry
end

def sleep_entry
	puts "How many hours did you sleep last night?"
	@hours = gets.chomp.to_f

	calc_debt
end

def calc_debt
		# @hours = (@hours - 7.5).abs
	if @hours < 7.5
		@sleep_debt = @hours - 7.5
		puts "Your sleep debt for the night is #{(@sleep_debt)}!"
		@total_debt += @sleep_debt
	elsif @hours > 7.5
		@sleep_debt = (@hours - 7.5).abs
		puts "Your sleep debt for the night is #{(@sleep_debt)}!"
		@total_debt += @sleep_debt
	end
		
end

initializer

base_uri = 'https://burning-heat-2756.firebaseio.com/'

firebase = Firebase::Client.new(base_uri)

response = firebase.push("sleep_data", { :hours_slept => @hours, :total_debt => @total_debt })