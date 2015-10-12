// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// Pseudocode:
// Input: an object that is a list of groceries and quantities
// Output: 1) an object with an additional item
	// 2) object with one less item
	//3) Change number quantities for itemes in my list
	// 4) print the list nicely

var list = new Object()
list = {'apples': 5, 'bread' : 1, 'cookies': 12}

// console.log(list)
// list['chocolate'] = 3
// console.log(list)

// delete list['cookies']
// console.log(list)

// list.apples= 3
// list.bread = 2
// list.chocolate = 6
// console.log(list)

// console.log("Here is my grocery list:" + list.apples )

// As functions:
function addItem(groceryList, item, quantity){
	groceryList[item] = quantity;
	console.log(groceryList);
}

addItem(list, "orange juice", 8)

function removeItem(groceryList, item){
 	delete groceryList[item];
 	console.log (groceryList);
}

removeItem(list, "cookies")

function updateQuantities(groceryList, item, quantity){
	groceryList[item] = quantity;
	console.log(groceryList);
}

updateQuantities(list, 'apples', 3)

function printList(groceryList){
	console.log("Grocery List:")
	for (item in groceryList){
		console.log(item + " ~~ " + list[item])
	}
}
printList(list)


//Reflection:
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I practiced syntax, making functions, modifying objects, and passing information into the functions.

// What was the most difficult part of this challenge?
// nothing too diffcult.  The main error I got was when I used dot notation instead of bracket.  
// I'm not sure I full understand when bracket is necessary, but it seems that it is the safer bet, when in doubt.
// It was actually pretty simple, especially compared to when I did it as a ruby challenge.
// It was much easier this time around because I understood what was being asked and how to structure it.
// Did an array or object make more sense to use and why?
// An object because I was assigning pairs of information, not one list with an index label.
