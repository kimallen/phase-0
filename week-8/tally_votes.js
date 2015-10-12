// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Ali Lyons.
// This challenge took me [5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Input: existing object
// Output: Function voteCount populated with the number of votes by candidate
    // define in who was elected in the object officers
// Loop through each student
    // access each property within the office being voted on
    // add the candidate receiving a vote to the voteCount object for the respective office
    // if the candidate has already been defined in voteCount, add one to the total


// __________________________________________
// Initial Solution

// Sets all students' votes per candidate to 0.
for (var student in votes){
  var obj = votes[student]
   for (var offices in obj){
     voteCount.president[obj[offices]] = 0
     voteCount.vicePresident[obj[offices]] = 0
     voteCount.secretary[obj[offices]] = 0
     voteCount.treasurer[obj[offices]] = 0
   }
}

// Tally's the votes per candidate per position
for (var student in votes){
  var obj = votes[student]
   for (var offices in obj){
     if (offices == "president"){
        voteCount.president[obj[offices]] += 1;}
     else if (offices == "vicePresident"){
      voteCount.vicePresident[obj[offices]] += 1;}
     else if (offices == "secretary"){
      voteCount.secretary[obj[offices]] += 1;}
     else if (offices == "treasurer"){
      voteCount.treasurer[obj[offices]] += 1;}
   }
}

// assigns the winners to the position
for (var position in voteCount){
  obj = voteCount[position];
  max = Math.max.apply(Math, Object.keys(obj).map(function(key){return obj[key]}))
  // tried out this method but the _ brought an error--why?
  // var winner = _.invert(obj)[max];
  for (var key in obj){
    if (obj[key] == max){
      var winner = key
    }
  }
  officers[position] = winner
}
console.log(officers)
// __________________________________________
// Refactored Solution

//too much time on this, can't spend time refactoring at this point.




// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// I found it quite challenging.  The deeper they were nested, the more confused my brain was.  
// It really highlights how important it is to use meaningful variable names.
// Were you able to find useful methods to help you with this?
// I used Math.max and Object.keys, though not sure I full understand how they work.  
// It's amazing how long you can spend on something and end up with only a few lines of code.
// What concepts were solidified in the process of working through this challenge?
// I'm not sure anything was solidified. I got practice using the for (var...in...) loop.  
 // I'd like to know how to refactor because I know this would help me understand the nested objects better.
 // I'm also curious how I might put my commands into functions.



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)