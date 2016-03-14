/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

var gradebook = {};

for (var i in students){
  gradebook[students[i]] = {}
};

console.log(gradebook);

var i = 0;
for (var j in gradebook){
  gradebook[j]["testScores"] = scores[i];
  i++;
};

// for (var j in gradebook){
//   for(var i in scores ){
//     gradebook[j]["testScores"] = scores[i]
//     console.log(gradebook);
//     };
// };

console.log(gradebook);

// gradebook.addScore = function(name,score){
//     for(var n in gradebook){
//       if(name === n){
//         gradebook[name]["testScores"].push(score);
//       }
//     }
// }

gradebook.addScore = function(name,score){
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name]["testScores"]);
}

// function average (array){
//   var total = 0;
//   for(var i in array){
//     total+=array[i];
//   };
//   var average = total/array.length;
//   return average;
// };



// __________________________________________
// Refactored Solution



var average = function(array){
   var  total = array.reduce(function(a, b) { return a + b;});
   return total /array.length;
};




// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// I learned that we can add a function to an object using the dot notation followed by defining a function. However this function will be specific to the object. A good thing to know is that using the object constructor will assign a copy of that function to every new instance of your object. Using prototyping will result in one function being shared across all instances. There are different ways to adding functions to objects.
// How did you iterate over nested arrays in JavaScript? I used for in loops
// Were there any new methods you were able to incorporate? If so, what were they and how did they work? I was able to incorporate the .reduce which is a higher order function, very ractical and versatile function, that comes in handy.







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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)