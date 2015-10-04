/*
Design Basic Game Solo Challenge

This is a solo challenge

Your mission description:
Game name: 
	FORAGE
Overall mission: 
	To survive

Goals: 
	To forage for enough food for the week
	To avoid eating poisonous plants
	To avoid starving		

Characters:
	Player, Plants
Objects: 
	A player with properties of name and nourishment level
	Several different plants (an array of objects) with properties of name, plants left, a fun fact, poisonous or not, availability (true or false)
Functions:
	mysteryPlant: randomly chooses a plant from an array of plant objects.  If none remain of a certain plant, that plant is removed from the array (or randomly choose until one is chosen)
	choicePoint: (modifies Player object) user chooses to eat or skip a plant.  This will result in changed nourishment level or dying of poison
	checkSurvival: evaluates whether the nourishment level has reached starving or survival and returns a statement if so.
	remainingPlants: (modifies plant object) if player chooses to eat a plant, there is one less plant.  If there's none left, availability is false.  Tells the player how many of that plant are left, if any.

Pseudocode
Create an ARRAY called "Flora" of at least 8 plant objects with their plant properties: name, number of plants left, whether its poisonous or not, whether there are any left in the forest, and a fun fact.

Create a function called "Begin" with a welcome message and instructions.  
	Create a prompt equal to playerName asking for the players name and add this to a new object called "player"
	Set the player's nourishment level to base level 5.
	Create a function called "mysteryPlant".
		Randomly choose an object (plant) from the ARRAY.
		Create a function called "remaining" that alters the plant property "plantsLeft" by subtracting 1.
			IF there are no remaining individuals of this plant type, remove them from the ARRAY (and put into a new array).  If the ARRAY is empty, game is over, person starves.
		Create a function called choicePoint.
			Tell the user they have encountered a plant.  They have two options: to eat it or to skip it.
			Set a variable that prompts the user for their choice.
			Create a conditional statement:
				IF the player chooses to eat the plant AND it is poisonous:
					Tell the player what they ate, a fun fact, and that it's poisonous and they are dead. Game over.
				ELSE IF they choose to eat (and survive), raise the nourishment level 2 points.
					Adjust the number of plants of that type remaining (see function below).
					Tell the user what they ate, a fun fact,  how many of that plant remains, and their new nourishment level.
				ELSE IF they choose "skip" subtract 1 from the nourishment level.
			Check for survival: Create a checkSurvival function.
				IF nourishment level is >= 10, return a winning statement to the user. Game over.
				ELSE IF nourishment level is <=0, return a starvation statement to the user.  Game over.
			Send the user back to find another mysteryPlant.
				



*/
// Initial Code
//Creates an array of plants and their properties
var flora = [
{name: "poison hemlock",
plantsLeft: 3,
available: true,
poisonous: true,
funFact: "This plant is related to the carrot.  Socrates was died of this plant."},
{name: "soaproot",
plantsLeft: 3,
available: true,
poisonous: false,
funFact: "The root of this plant can be used as a brush, soap, stunning fish, or food."},
{name: "poison oak",
plantsLeft: 3,
available: true,
poisonous: true,
funFact: "Deer like to nibble on the leaves and eat the red berries.  If you eat it, it will make your throat itch and swell."},
{name: "miner's lettuce",
plantsLeft: 3,
available: true,
poisonous: false,
funFact: "The young leaves look like hearts and the older leaves are circles.  The stems, leaves, and flowers are edible."},
{name: "manzanita",
plantsLeft: 3,
available: true,
poisonous: false,
funFact:"This native CA plant is drought tolerant and makes tangy red berries."}, /*whose seeds only germinate after fire exposure.??*/
{name: "chantarelle",
available: true,
plantsLeft: 3,
poisonous: false,
funFact: "This is not a plant but a delicious fungus that likes growing under live oaks and Douglas fir."}
]

//Gives game instructions to the user and gets their name and creates an object Player
function begin(){
	alert("Welcome to FORAGE.  You are lost in the forest, don't know your plants, and need to eat.  You will encounter plants and must choose whether to eat them or to pass.  Be aware that some are poisonous and will kill you.  But if you don't eat, you will die of starvation.  If you eat enough, you will survive long enough to be found.  If your nourishment level reaches 10, you survive.  If your nourishment level reaches 0, you will die.  Your current level is 5.");
	var playerName = prompt("What is your first name?");
	var player = new Object(); //put this outside of begin?
	player.firstName = playerName;
	player.energyLevel = 5;
	var removedPlants = [];
	

//Randomly chooses a plant from the array and removes plants from array whose value equals 0.
	function mysteryPlant(){
		var randomPlantIndex = Math.floor(Math.random() * (flora.length)) + min;
		var randomPlant = flora[randomPlantIndex];
		if (randomPlant.plantsLeft === 0){
			removedPlants = removedPlants.push(flora.splice(randomPlantIndex, 1));
		}
	}




//Adjusts how many plants of an individual type are left. Where to put this? After eat?
function remaining(){
	randomPlant.plantsLeft = plantsLeft -1;
}

//Lets the user choose whether to eat a plant or not and evaluates their choice based on the properties of the plant.
function choicePoint(){
	var choice = prompt("You are still hungry and encountered an attractive plant.  You have two choices: eat it, or leave it.  Be careful, it could be poisonous.  Please choose 'eat' or 'leave'");
	if (choice == "eat" && randomPlant.poisonous == true){
		return ("You just ate " + randomPlant.name + ". " + randomPlant.funFact + "It is poisonous.  You are dead.  Game over.");
	else if (choice == "eat"){

	}
	}
}

//Checks if the player has reached the game-ending survival level or starvation level.


//Sends the player back to another mysteryPlant.









} //closes begin
begin()
// Refactored Code




















