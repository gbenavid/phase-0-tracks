// Pass your reversed function a parameter(string)
function reversed (str){
	// Set an empty string that we will use latter on
  var reverse = "";
  // Loop through the string backwards
  for (var i = str.length; i > -1; i--){
  // Keep adding your letter to the empty string
  reverse += str[i];
  }
  console.log(reverse);
}
// Store results of driver code:
var storage = reversed("LOLA");


var  num_1 = 1;
var num_2 = 1;

if (num_1 === num_2) {
	console.log(storage);
} else {
	console.log("Opps! Something went wrong...");
}



// ------------------------------------------------

// // How to count down:
// for (var i = 10; i >= 0; i-=1) {
// 	console.log(i);
// }

// // How to loop through a string
// var str = "star";
// for (var i = 0; i < str.length; i++) {
// 	console.log(str[i]);
// }

// // How to add two numbers
// function add(x, y) {
//   return x + y;
// }
// console.log(add(5,3));

// // How to say hello
// function sayHello() {
//   console.log("Hello!");
// }
// sayHello();
