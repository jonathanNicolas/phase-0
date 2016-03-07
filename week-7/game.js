// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:A leprechain must get to the gold location in five moves or less
// Overall mission:Getting to the gold
// Characters:Leprechaun
// Objects:Gold,Leprechaun
// Functions:moveUp, moveDown, moveForward, moveBack

// Pseudocode
//Declare a 'leprechaun' object that will have properties as position and pickedUpGold
//Add different methods to 'leprechaun' to make it move up, down, forward and backward
//Declare a 'gold' object and give it a random position
//Move the leprechaun, five times, if he hasn't picked up the gold play again

// Initial Code
var leprechaun = {

  posX: 0,
  posY: 0,
  gold: 0,
  pickedUpGold: false,
  numberOfMoves: 0,

  move: function(direction) {
  if(direction === 'forward'){
    this.posX +=1;
  }
  else if(direction === 'back'){
    this.posX -=1;
  }
  else if(direction === 'up'){
    this.posY += 1;
  }
  else if(direction === 'down'){
    this.posY -=1;
  }


  this.numberOfMoves += 1;
  console.log("Leprechaun's position is " + this.posX + "," + this.posY);
  console.log("Leprechaun's number of moves is " + this.numberOfMoves);


  if(this.posX === gold.posX && this.posY === gold.posY){
  this.success = true;
  this.gold = 10;
  console.log("You reached the gold, you win!!");
  }
  }
}

var gold = {
posX: Math.floor((Math.random()*5)),
posY: Math.floor((Math.random()*5))
};

console.log("The gold is at "+ gold.posX + "," + gold.posY);


for (step = 0; step < 5; step++) {
  var myArray = ['up','down','forward','back']
  var direction = myArray[Math.floor(Math.random() * myArray.length)];
  leprechaun.move(direction);
}

if (leprechaun.pickedUpGold === false){
  console.log("please try again");
}




// Refactored Code

// Reflection
// What was the most difficult part of this challenge?  Most difficult part was deciding what game to design and how to restrict the "World" in which the objects would be allowed to move, the only quick solution was to limit the random number but a better way would be to actually create a World object in which the characted can "live" in.
//I learned to use "this" to refer to the parent object and for functions.
// What did you learn about creating objects and functions that interact with one another?
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//I was trying to include user choice once with the prompt() but was unsuccesful. I ended up keeping my loop which generates the directions randomly
// How can you access and manipulate properties of objects? In this game u can use the following
// leprechaun["property"]
// You can set new properties as such
// leprechaun.property = "XXX";
//
