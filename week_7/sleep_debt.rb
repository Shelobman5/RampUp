class Sleep

	def initializer
		@sleep_debt = 0
		sleep_entry
	end

	def sleep_entry
		puts "How many hours did you sleep last night?"
		@hours = gets.chomp.to_i
		calc_debt
	end

	def calc_debt
		# @hours = (@hours - 7.5).abs
		if @hours < 7.5
			@hours = (@hours - 7.5).abs
			puts "Your new sleep debt total is #{(@sleep_debt + @hours)}!"
		elsif @hours > 7.5
			@hours = (@hours - 7.5).abs
			puts "Your new sleep debt total is #{(@sleep_debt - @hours)}!"
		end
		
	end
end	

stefan = Sleep.new
stefan.initializer
