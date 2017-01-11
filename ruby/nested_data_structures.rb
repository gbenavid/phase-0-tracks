hillarious_books = {
	klien: {
		book_title: "You'll grow out of it",
		top_chapters: {
			poodle_vs_wolf: 4, 
			tom_man: 3,
			dale: 1
		},
		rav_reviews: [
			"New York Times",
			"Amy Schumer",
			"President Obama"]
	},
	kalling: {
		book_title: "Is everyone hanging out without me (and other concerns)",
		top_chapters: {
			cubby_for_life: 1,
			what_to_wear: 7
		},
		rav_reviews: [
			"Ben Aflack",
			"Michelle Obama"
		]
	},
	amoruso: {
		book_title: '#GIRLBOSS',
		top_chapters: {
			going_to_jail: 4,
			getting_hired: 11
		},
		rav_reviews: [
			"Beyonce",
			"The La Times"
		]
	}
}
p hillarious_books[:klien][:rav_reviews][0]
# ===> "New York Times" || Reaches into our object klien, then gets the data stored inside our array at index 0 
p hillarious_books[:kalling][:rav_reviews].push("Ms. America")
# "Ben Aflack", "Michelle Obama", "Ms. America" ===> [] || Will go into the object :kalling and access the :rav_reviews object and then using the push method (for arrays) will add a rav review from Ms. America.
p hillarious_books[:amoruso][:top_chapters][:going_to_jail]
#===> 4 || hillarious_books >> amoruso>> top_charactes >>*NOTE: I struggled here with a nil output for a while becuase I was forgetting to access into the :top_chapters object* >> going_to_jail >> 4. Where four is the value stored inside the key 'going_to_jail'
p hillarious_books[:amoruso][:book_title].downcase 
# ===> #girlboss || We access the book titile in the ameroso object inside our hillarious_books data structure and preform the downcase method on our string. 
p hillarious_books[:klien][:rav_reviews].reverse



