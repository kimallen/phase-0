// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with Michael Landon: .

// Pseudocode:
// Input: a number (integer)
// Output: a string with commas inserted appropriately

// TO solve:
// create a function called "separateCommas" that calls a number
  
// Tell the function where the commas go

// Add commas every 4th position from right to left but not in the last position

// Returns the number as a string with commas 

// Initial Solution
// var separateCommas = function(number){
//   var numberString = number.toString();
// //   return numberString;
//   var numberArray = numberString.split("").reverse();
// //   return numberArray;
//   for (var counter = 3; counter < numberArray.length - 1; counter+=4){
//     numberArray.splice(counter, 0, ",");
//   };
//     var finalAnswer = numberArray.reverse().join("");
//     return finalAnswer;
// }

// Refactored Solution
function separateCommas(number){
  var numberArray = number.toString().split("").reverse();
  
  for (var counter = 3; counter < numberArray.length - 1; counter+=4){
    numberArray.splice(counter, 0, ",");
  };
   
    return numberArray.reverse().join("");
};


// Your Own Tests (OPTIONAL)
console.log(separateCommas(4623434554768))
console.log(separateCommas(462343))
console.log(separateCommas(462))


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We approached it similarly by converting to a string and reversing it then making an array.  Then we looped it through with a counter of 4 and 
// inserted the comma.  I think in my Ruby solution I may have used the array index to insert, whereas here we were able to use the splice function.
// The shorthand way of creating a counter in a for loop made it simpler to think about.
// What did you learn about iterating over arrays in JavaScript?
// Iterating for us meant using a for loop, whereas in Ruby I would use each or map.
// What was different about solving this problem in JavaScript?
// It was hard not knowing methods (or functions) but really helpful to know what exists and Ruby and then to see if 
// an equivalent existed in JS.
// What built-in methods did you find to incorporate in your refactored solution?
// We used .reverse, .join, .split, toString, and .splice.






