// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myName = "Jonathan"
console.log(myName);




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var i=1; i <= 100; i++)
{
    if (i % 15 == 0)
        console.log("FizzBuzz");
    else if (i % 3 == 0)
        console.log("Fizz");
    else if (i % 5 == 0)
        console.log("Buzz");
    else
        console.log(i);
}

// Functions

// Complete the `minimum` exercise.

console.log(Math.min(5, 20));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Jonath",
  age: 33,
  favoriteFoods: ["Pasta", "Rice", "Mcdo"],
  quirk: "I enjoy reading math books"
}

/*
REFLECTION
Q: What are the biggest similarities  and differences between JavaScript and Ruby?
A: JavaScript and Ruby both are scripting languages so they are quite similar. The logic is quite the same and jumping from Ruby to Javascript feels quite natural. Some of the differences I think would be in the syntax. Here are a few examples:

- To increment or decrement by 1 in JavaScript, you can write ++.
- Functions in JavaScript are the same as methods in Ruby. Syntax def with Javascript defining functions with curly brace ( function nameOfFunction(){})
-Objects are similar to Ruby’s hash), declared as variables, are a way of organizing key/value pairs.
-Both Ruby and JavaScript have Arrays, which are more of less logically the same.
-Both Ruby and JavaScript have a .each method (for ruby) .forEach(for javaScript)



Q: Was some of your Ruby knowledge solidified by learning another language? If
so, which concepts?
A: I solidified my control flow understanding as it was like a review of what was done in ruby.

Q: How do you feel about diving into JavaScript after reading these chapters?
A: Feel good but would but would from what I read online javascript is more efficient than Ruby and I would like to get an opportunity to see that in action.


*/