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
function compareObjs(obj, objTwo){
  for (var key in obj){
    if (obj[key] === objTwo[key]) return true;
  }
  return false;
}
//TESTING
console.log(compareObjs(
  {name:"Tu", age:28}, 
  {name:"To", age:29})
);
