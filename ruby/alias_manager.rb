# INPUT = ("First Last")
class AliasManager
	def initialize(name)
		@name = name
	end
	def generate_alias
		swapped_vowels = vowel_swapper
		swapped_consonatns = consonant_swapper(swapped_vowels)
		swap_first_and_last = name_swapper(swapped_consonatns)
	end
	def vowel_swapper
		chopped_name = @name.downcase.chars
		vowel_swapped_name = ""
		vowels = ['a','e','i','o','u']

		chopped_name.each do |character|
			if vowels.include?(character)
				if character  == 'u'
					vowel_swapped_name << 'a'
				else
					current_index = vowels.index(character)
					next_index = current_index + 1
					next_letter = vowels[next_index]
					vowel_swapped_name << next_letter
				end
			else
				vowel_swapped_name << character
			end
		end
		vowel_swapped_name
	end 
	def consonant_swapper (string)
		chopped_name = string.downcase.chars
		consonant_swapped_name = ""
		consonants = ['b','c','d','f','g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

		chopped_name.each do |character|
			if consonants.include?(character)
				if character  == 'z'
					consonant_swapped_name << 'b'
				else
					current_index = consonants.index(character)
					next_index = current_index + 1
					next_letter = consonants[next_index]
					consonant_swapped_name << next_letter
				end
			else
				consonant_swapped_name << character
			end
		end
		consonant_swapped_name
	end
	def name_swapper (string)
		string.split(" ").reverse.join(" ")	
	end
end

my_alias = AliasManager.new('Felicia Torres')
p my_alias.generate_alias