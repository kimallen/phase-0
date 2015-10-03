RELEASE 1:
var winners = [
{name: "sarah", event: "swimming"},
{name: "ryan", event: "surfing"},
{name: "sally", event: "soccer"}
]

var bulkUp = function (athletes) {
for (var counter = 0; counter < athletes.length; counter++) {
athletes[counter].win = athletes[counter].name + " won the event " + athletes[counter].event;
}
};
console.log(bulkUp(winners))
console.log(winners)

RELEASE 2:
function reversing(string){
return string.split('').reverse().join('');
};


Release 3:
console.log(reversing("This is a new language"))

var array = [1, 3, 6, 8, 10, 12, 16, 17]
function evens (array){
function isEven(value) {
return value % 2 == 0;
}
var newArray = array.filter(isEven); 
return newArray
}

console.log(evens(array))

Release 3 option 2:
function evens(array) {
// var even_array = [];
for (var i = 0; i < array.length; i++) {
while (array[i] % 2 == 1) {
array.splice(i, 1);
}
};
console.log(array);

RELEASE 4:
DRIVER FUNCTION:
function Athlete(name, age, sport, quote){
 this.name = name;
 this.sport = sport;
 this.quote = quote;
}
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

Reflection:
What JavaScript knowledge did you solidify in this challenge?
I got practice with some of the notation, like defining variables with "var" and ending lines with ';'. Also I practiced adding strings and using the 'for' counter notation.  I did not solidify anything, maybe "gel-ized."
What are constructor functions?
They are functions that are used so that one can create instances of an object or do things to it before it is created.
How are constructors different from Ruby classes (in your research)?
I'm not sure.  The syntax is certainly different.  The article is too dense for me to really parse it out.  It seems like there is more flexibility in sharing of variables.