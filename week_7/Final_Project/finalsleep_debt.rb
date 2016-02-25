require 'rubygems'
require 'sqlite3'

db = SQLite3::Database.open('finalsleep_data.sqlite')
# db.execute("CREATE TABLE debt_calc(hours, sleep_debt)")



def initializer
	@sleep_debt = 0
	# @insert_query = "INSERT INTO debt_calc(hours, sleep_debt) VALUES(?, ?)"
	sleep_entry
end

def sleep_entry
	puts "How many hours did you sleep last night?"
	@hours = gets.chomp.to_f.round(2)
	calc_debt
end

def calc_debt
		# @hours = (@hours - 7.5).abs
	if @hours < 7.5
		@sleep_debt = @hours - 7.5
		puts "Your sleep debt for the night is #{(@sleep_debt)}!"
		# db.execute(@insert_query, @sleep_debt + @hours)
	elsif @hours > 7.5
		@sleep_debt = (@hours - 7.5).abs
		puts "Your sleep debt for the night is #{(@sleep_debt)}!"
		# db.execute(@insert_query, @sleep_debt - @hours)
	else
		puts "You have no sleep debt!"
	end
	@insert_query = "INSERT INTO debt_calc(hours, sleep_debt) VALUES(#{@hours}, #{@sleep_debt})"
end

initializer

db.execute(@insert_query)