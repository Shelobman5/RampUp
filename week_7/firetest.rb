require "rubygems"
require "firebase"

ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

ENCRYPTION = "mWbDlqOtwaMhNkBzpHJicuRfsLSdCZKXAUonIvPgVGEexyjTYrQF"

def name_generator
	puts "Please enter your name!"
	@old_name = gets.chomp
	@new_name = @old_name.tr(ALPHABET, ENCRYPTION)
	puts "Your newly generated name is #{@new_name}"
end

name_generator

base_uri = 'https://burning-heat-2756.firebaseio.com/'

firebase = Firebase::Client.new(base_uri)

response = firebase.push("names", { :old_name => @old_name, :new_name => @new_name })