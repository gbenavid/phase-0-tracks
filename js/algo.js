var findLongestWord = function(array) {
  var elements = array.length;
  var count = 0;
  for (i = 0; i < elements; i++) {
    if (array[i].length > count) 
      count = array[i].length;
  }
  return count;
}
var filterLongWords = function(array){
  var length = array.length;
  var longestWords = [];
  for (i = 0; i < length; i++) {
    if (array[i].length > array[i].length - 1) {
      longestWords = array[i];
    }
  }
  return longestWords;
}
// console.log(findLongestWord(["Grandma's Cookies", "All the love you need", "Take me home, when september ends..."]));
// console.log(filterLongWords(["Grandma's Cookies", "All the love you need", "Take me home, when september ends...", "your no good, your no good, your no goooodd."]));

function compareObjs(array){
	var obj_1 = array[0];
	var obj_2 = array[1];
  if (Object.keys(obj_1.keys) == Object.keys(obj_2.keys)) {
  	return true;
  }else{
  	return false;
  }
}


//TESTING
console.log(compareObjs[
	{name: "Steven", age: 54},
	{name: "Tamir", age: 54}]);
// >> true




//NOTES:
// var an_obj = { 100: 'a', 2: 'b', 7: 'c' };
//console.log(Object.keys(an_obj));
























