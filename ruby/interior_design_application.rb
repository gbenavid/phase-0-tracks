# Process the interior design application
# Do we care if the data is readable 
application = {
	name: "Gina Ghram",

	address: "1400 Play St. Apt 12 Boston",

	email: "gina-g@gmail.com",

	phone: "123.234.3456",

	fav_bule_hues: "periwinkle, Lemongrass, navy",

	wallpaper_preferences: [
		paisley: true, 
		cheverons: false, 
		photorealistic_1: false, 
		photorealistic_2: true], 
	obmbre_is: [
	fierce: false,
	last_season: true,
	medieval: false]
}
p application
# Add a value that let's us know that we have/n't hirred this person.
application["hirred"] = true
application[:name] = "Gina Benavidez"
p application
p application[:wallpaper_preferences]
