
// Write your own variable and do something to it in the eloquent.js file.

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with 
// "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) 
// 	rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
// Describe while and for loops


// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.



// CODE Exercises:
// var sand_dollar = 5;
// sand_dollar = sand_dollar * 10;

// Short program:
// prompt("What is your favorite food?", "");
// alert("Hey! That\'s my favorite too!");

// Challenges-

// Triangle

// var hashTag = "#"
// for (var counter = 0; counter > 7; counter++);
// 	console.log(hashTag++ "\n");

// // OR
// var hashTag = "";
// counter = 1;
// while (counter <= 7){
// 	console.log(hashTag+="#");
// 	counter++;
// 	}

// Currently printing only the last number ... .
// FizzBuzz
// for (var number = 0; number < 100; number += 1);
// 	{if (number % 3 == 0 && number % 5 ==0)
// 		var statement = "FizzBuzz";
// 	else if (number % 3 == 0) statement= "Fizz";
// 	else if (number % 5 == 0) statement = "Buzz";
// 	else statement = number;
// 	console.log(statement);
// 	}

// Chess Board
// var board = ""
// for (line = 1; line <= 8; line+= 1) 
// 	if (line % 2 == 0) board += "# # # # \n";
// 	else board += " # # # #\n";
// 	console.log(board);



// FUNCTIONS:
// Exercise: minimum

// var min = function(a, b){
// 	return Math.min(a,b);
// 	}
// console.log(min(0, 10));
// console.log(min(0,-10));

// 

// RECURSION
// function isEven(N){
//   if (N == 0) 
//   	return true;
//   else if (N == 1) 
//   	return false;
//   else isEven(N-2);
// }
// console.log(isEven(50));
// // → true
// console.log(isEven(75));
// // → false
// console.log(isEven(-1));
// → ??

// BEAN COUNTING
// function countBs(str){
//   var numBs = 0;
//   for (var counter = 0; counter < str.length; counter+=1)
//   	if str.charAt(counter) == "B";
//     numBs = numBs + 1;
// 	}

// console.log(countBs("BBC"));
// // → 2
// console.log(countChar("kakkerlak", "k"));
// // → 4

// DATA STRUCTURES:
// me = {name: Kim, age: 38, favoriteFoods: ["Indian", "chocolate", "rice"] quirk: "I sleep better camping than at home"}

