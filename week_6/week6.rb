module ParseCSV
	def load_file(file)
		File.open(file)
	end
end

new_csv = ParseCSV.new # Doesn't work - you can't instantiate a module

