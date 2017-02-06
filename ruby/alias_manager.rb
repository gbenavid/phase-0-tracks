name = ""
collected_names = {}
# UI
puts "Welcome secret agents at DBC! Let's generate some aliases!"
until name == 'quit'
	puts "Enter a name or type 'quit' when finished"
	name = gets.chomp
	original_name = name
	if name != 'quit'
# METHODS
def dismantle_name (name)
	name.split(' ').reverse.join(" ").downcase.chars
end
def change_vowels (name)
	vowels = 'aeioua'
	my_alias = []
	name.each do |letter| 
		if vowels.include?(letter)
			next_vowel = vowels.index(letter) + 1
			my_alias << vowels[next_vowel]
		else
			my_alias << letter
		end
	end
	my_alias
end
def change_consonants (array)
	consonants = 'bcdfghjklmnpqrstvwxyzb'
	my_alias = []
	array.each do |letter| 
		if consonants.include?(letter)
			next_letter = consonants.index(letter) + 1
			my_alias << consonants[next_letter]
		else
			my_alias << letter
		end
	end
	my_alias
end
def build_name (array)
	array.join.split.map(&:capitalize)*' '
end
collected_names[build_name(change_consonants(change_vowels(dismantle_name(name)))).to_sym]=original_name
puts "Your agents name is: " + build_name(change_consonants(change_vowels(dismantle_name(name)))) 
else
end
end
puts "Here's a complete list of your generated alias's!"
puts "______"*6
collected_names.each do |alias_name, real_name| 
	puts "#{alias_name} formerly known as, #{real_name}"
end
puts "______"*6
