var names = ["Edward", "Chris", "Christina", "Tabitha"];
var colors = ["Blue", "Orange", "Green", "Yellow"];
colors.push("Black");
names.push("Henry");

function color_my_horses(horses, colors){
	colorful_horses = {}
	for (i = 0; i < horses.length; i++){
		colorful_horses[horses[i]]=colors[i];
	}
	return colorful_horses;
}
console.log(color_my_horses(names, colors))

// Creating a car using a constructor function
function Car (make, year, isFast) {
  this.make = make;
     this.year = year;
     this.isFast = isFast;
     this.zoom = function() {
       console.log("ZOOOM!");
     };
}
police = new Car('Honda', 2012, true);
console.log('This ' + police.make + ' is a police car that goes... ');
police.zoom();
taxi = new Car ('Mazda', 2010, false)
console.log('This taxi driver drives a ' + taxi.make + ' and it is not very fast...');
