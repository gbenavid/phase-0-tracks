function reversed (str){
  var reverse = '';
  for (var i = str.length; i > -1; i--){
  reverse += str[i];
  }
  console.log(reverse);
}
reversed("Kitty")

// How to count down:
for (var i = 10; i >= 0; i-=1) {
	console.log([i]);
}

// How to loop through a string
var str = "star";
for (var i = 0; i < str.length; i++) {
	console.log(str[i]);
}

// How to add two numbers
function add(x, y) {
  return x + y;
}
console.log(add(5,3));

// How to say hello
function sayHello() {
  console.log("Hello!");
}
sayHello();
