Did you learn anything new about JavaScript or programming in general?
Are there any concepts you feel uncomfortable with?
Yes, I learned that it has nothing to do with Java.  It is a very liberal program, meaning it accepts a lot without telling you what is wrong,
but that this flexibility also can be advantageous. I also learned that some people who have written books about a programming
language, or at least one, hated the language when they started.

I am a little uncomfortable with the idea of hating another language (I currently hate CSS).  Otherwise, the intro was pretty basic.

Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
SImilarities: They both use && and || as boolean operators; they both can use a ternary operator, written the same something ? this_if_true : this_if_false
Differences: In Ruby you can't add a string to a number(in that order)- you get an error.  In JS, it converts the number to a string and concatenates them.
In Ruby, the output of a boolean comparison of two values returns true or false.  In JS, it returns one of the values (based on its own rules).

What is an expression?
A fragment of code that produces a value.
What is the purpose of semicolons in JavaScript? Are they always required?
They signal the end of a statement.  Without it, it things the next line is part of the first.  There are a few exceptions where it can be ommitted.
What causes a variable to return undefined?
If you ask it for a value and it does not have one.
Write your own variable and do something to it in the eloquent.js file.
What does console.log do and when would you use it? What Ruby method(s) is this similar to?
Console.log outputs the result of an expression.  It is like puts or print (not sure if it includes a linebreak).  It logs it in the Javascript console

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with 
"Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) 
	rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
Describe while and for loops

What other similarities or differences between Ruby and JavaScript did you notice in this section?
They both use while, do, for, and if statements.  Syntax for a second conditional if statement is elsif in Ruby, else if in JS.
JS has a way to succinctly make a "counter" statement: for (initializing statement; the check; the update) ex. for (counter = 0; counter < 10; counter = counter + 1)
Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.



CODE Exercises:
var sand_dollar = 5;
sand_dollar = sand_dollar * 10;

Short program:
prompt("What is your favorite food?", "");
alert("Hey! That\'s my favorite too!");