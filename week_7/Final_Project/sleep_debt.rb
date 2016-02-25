require 'rubygems'
require 'sqlite3'
db = SQLite3::Database.open('sleep_data.sqlite')
# db.execute("CREATE TABLE debt_calc(hours, sleep_debt)")

class Sleep

	def initializer
		@sleep_debt = 0
		@insert_query = "INSERT INTO debt_calc(hours, sleep_debt) VALUES(?, ?)"
		sleep_entry
	end

	def sleep_entry
		puts "How many hours did you sleep last night?"
		@hours = gets.chomp.to_i
		db.execute(@insert_query, @hours)
		calc_debt
	end

	def calc_debt
		# @hours = (@hours - 7.5).abs
		if @hours < 7.5
			@hours = (@hours - 7.5).abs
			puts "Your new sleep debt total is #{(@sleep_debt + @hours)}!"
			db.execute(@insert_query, @sleep_debt + @hours)
		elsif @hours > 7.5
			@hours = (@hours - 7.5).abs
			puts "Your new sleep debt total is #{(@sleep_debt - @hours)}!"
			db.execute(@insert_query, @sleep_debt - @hours)
		end
		
	end
end	

stefan = Sleep.new
stefan.initializer
