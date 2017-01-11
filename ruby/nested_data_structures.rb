hillarious_books = {
	klien: {
		book_title: "You'll grow out of it",
		top_chapters: {
			poodle_vs_wolf: 4, 
			tom_man: 1,
			dale: 3
		},
		rav_reviews: [
			"New York Times",
			"Amy Schumer"]
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
		book_title: "#GIRLBOSS",
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
p hillarious_books 



