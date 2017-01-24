require_relative 'vampires'

describe Fact_checking do
	it "should check against the Werewolf Intelligence Bureau database for vampire aliases." do
		expect(Fact_checking.new.valid_name("Drakula")).to be false
		expect(Fact_checking.new.valid_name("Tu Fang")).to be false
		expect(Fact_checking.new.valid_name("Gina")).to be true
	end
end