// We need to assign colors to horses. 
// Add code that will use your two arrays to create an object.

// The keys of your object should be horse names, 
// and the values should be colors. 
// Your solution should be something that would work for any number of colors/horses, as long as the two arrays are the same length. 
var names = ["Edward", "Chris", "Christina", "Tabitha"];
var colors = ["blue", "orange", "green", "yellow"];
colors.push("black");
names.push("Henry");

// var dog = {name: null, 'age': 3, isGoodDog: true};

function color_my_horse(horses, color) {
	var colorful_horses = {};
	for (var h = 0; h < color.length; h++){
		 //>>color[i]		
var colors = ["blue", "orange", "green", "yellow"];
var names = ["Edward", "Chris", "Christina", "Tabitha"];
colors.push("black");
names.push("Henry");
thing = {};
for(var i = 0; i < colors.length; i++){
  thing[names[i]] = colors[i];
}
 console.log(thing)
 //release 2:
 function Car(model, year, isFast) {
  
  console.log("Our new car:", this);
  
this.model = model;
this.year = year;
this.isFast = isFast;
this.race = function() {
  console.log("ZOOM!"); 
    
  };
  
  console.log("Ready, Set, Go!.....");
}
console.log("Let's build a car ...");
var anotherCar = new Car("Toyota Camry", 2012, true);
console.log(anotherCar);
console.log("Our car can race:");
anotherCar.race();
console.log("-~-~-");
console.log("Let's build another car ...");
var yetAnotherCar = new Car("Prius C class", 2016, false);
console.log(yetAnotherCar.model);
console.log("This new car can race, too:");
yetAnotherCar.race();
console.log("-~-~-")
console.log("Let's build another car ...");
var ourThirdCar = new Car("Tesla", 1874, false);
console.log(ourThirdCar.model);
console.log("This new car cannot race....");
console.log("-~-~-")






