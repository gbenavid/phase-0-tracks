require_relative 'vampires'

describe Fact_checking do
	it "should preform a check against the Werewolf Intelligence Bureau database for vampire aliases." do
		expect(Fact_checking.new.valid_name("Drakula")).to be false
		expect(Fact_checking.new.valid_name("Tu Fang")).to be false
		expect(Fact_checking.new.valid_name("Gina")).to be true
	end
	it "should tell me if the applicant can match his dob to his age. And will eliminate immortal applicants" do
	expect(Fact_checking.new.valid_age(21, 1996)).to be true
	expect(Fact_checking.new.valid_age(1000, 1017)).to be false
	expect(Fact_checking.new.valid_age(25, 1800)).to be false
	end
	it "should return false for applicants who don't like garlic and true for applicants who do like garlic." do
	expect(Fact_checking.new.likes_garlic?("YES")).to be true
	expect(Fact_checking.new.likes_garlic?("NOO")).to be false
	expect(Fact_checking.new.likes_garlic?("nope")).to be false
	end
	it "should return true for applicants interested in health care enrollment and false for applicants who don't want this option." do
		expect(Fact_checking.new.healthcare("Yes")).to be true
		expect(Fact_checking.new.healthcare("NOO")).to be false
		expect(Fact_checking.new.healthcare("Yep")).to be false
	end
end