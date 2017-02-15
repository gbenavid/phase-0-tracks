function reverse(s){
  var reversed = "";
  for (var i = s.length -1; i >= 0; i--)
    reversed += s[i];
    return reversed;
}
// DRIVER CODE
console.log(reverse('test'));

if (1 == 1) {
  console.log(reverse("hello"));
} else {
  console.log(reverse("bear"));
}
