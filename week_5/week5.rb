# Before week 5

# class Person
#    attr_accessor :name

#   def shout_name
#      name.upcase + "!"
#   end
# end

# person = Person.new
# person.name = "Stefan"
# puts person.shout_name

# # Week 5
# ~~~~~~~~~~Class Methods~~~~~~~~~
# class Person

# 	def self.say_hello
# 		puts "Hello guys!"
# 	end
# end

# Person.say_hello
#~~~~~Class variables (do not use)~~~~~~~~

class Person
  @@person_count = 0
  def initialize 
     @@person_count += 1
  end 
  def self.counts
    @@person_count
  end
end

Person.new
Person.new
puts Person.counts
