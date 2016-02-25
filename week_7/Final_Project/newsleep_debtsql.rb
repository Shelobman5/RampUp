require 'rubygems'
require 'sqlite3'

db = SQLite3::Database.open('sleep_data2.sqlite')
# db.execute("CREATE TABLE debt_calc(hours, sleep_debt, total_debt)")



def initializer
	@total_debt = 0
	@sleep_debt = 0
	# @insert_query = "INSERT INTO debt_calc(hours, sleep_debt) VALUES(?, ?)"
	sleep_entry
end

def sleep_entry
	puts "How many hours did you sleep last night?"
	@hours = gets.chomp.to_i
	calc_debt
end

def calc_debt
	new_total_debt = 0
		# @hours = (@hours - 7.5).abs
	if @hours < 7.5
		@sleep_debt = @hours - 7.5
		puts "Your sleep debt for the night is #{(@sleep_debt)}!"
		@total_debt += @sleep_debt
		new_total_debt += @total_debt
		# db.execute(@insert_query, @sleep_debt + @hours)
	elsif @hours > 7.5
		@sleep_debt = (@hours - 7.5).abs
		puts "Your sleep debt for the night is #{(@sleep_debt)}!"
		@total_debt += @sleep_debt
		new_total_debt += @total_debt
		# db.execute(@insert_query, @sleep_debt - @hours)
	end
	
	@insert_query = "INSERT INTO debt_calc(hours, sleep_debt, total_debt) VALUES(#{@hours}, #{@total_debt}, #{new_total_debt})"
end

initializer

db.execute(@insert_query)

# ~~~~~~~~~~~~SQL QUERY~~~~~~~~~~~~~

# SELECT rowid, 
# (SELECT SUM(total_debt) from debt_calc) total 
# FROM debt_calc

# DON'T USE

# select a1.rowid, a2.total_debt, SUM(a2.total_debt) total 
# from debt_calc a1, debt_calc a2
# where a1.total_debt <= a2.total_debt or (a1.total_debt = a2.total_debt and a1.rowid = a2.rowid)
# group by a1.rowid, a1.total_debt
# order by a1.total_debt, a1.rowid DESC;

