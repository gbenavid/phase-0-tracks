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
//TESTING COMPAREOBJS();
console.log(compareObjs(
  {name:"Tu", age:28}, 
  {name:"To", age:29})
);

//TESTING FIND LONGEST WORD FUNCTION WITH A LOOP
//Get a random number for your generateRandomNumber function
function generateRandomNumber (){
  return Math.floor((Math.random() * 10) + 1);
}
//Get a random array for your find longestWord function
function generateTests(number){
  array = [];
  word = "";
  characters = 'abcdefghijklmnopqrstuvwxyz';
  for (i = 0; i <= number; i++){
    word += characters.charAt(i);
    array.push(word);
  }
  return array;
}
 test = function testingRandomStrings (){
  for(var i=0; i < 10; i++){
    console.log(generateTests(generateRandomNumber()));
  }
};
test();
