// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up



// var athletes_array = function(array_name, event_property) {

//  array_name: "name";
//  event_property: "event";
//  win: array_name["name"] + " has won the " + event_property["event"]
// };

// function win(athlete) {
//  for (var i = 0; i < athlete.length; i++) {
// //    console.log(athlete[i].name + " won the " + athlete[i].event + "!");
// //  }
// // }

// var athlete = [
// {name: "Sarah Hughes",
//  event: "Single Ladies",},
// {name: "Danny",
//  event: "Soccer"}
// ]

// // win(athlete)

// var athlete = [{
//    name: "Brian",
//    event: "An Oscar"}]

// var athlete = [{
//    name: "name",
//    event: "Event"}]


// function win(athlete) {
// for (var i = 0; i < athlete.length; i++) {
//  console.log(athlete[i].name + " won the " + athlete[i].event + "!");
// }
// }


// win(athlete)
// // array_name = [jonathan,nicolas]

// // console.log(array_name)


// // Jumble your words


// var reverse_string = function(string) {
//  return string.split('').reverse().join('');
// };

// console.log(reverse_string("this is cool"));

// 2,4,6,8

// var even_only = function(array) {
// var  even = [];

//  for (var counter = 0; counter < array.length; counter++) { if (array[counter] % 2 === 0) {
//  even.push(array[counter]);
//    }
//                                                        }

//  return even
// }


//  var integers = [3,8,1,6,2,0,5,7];

//  console.log(even_only(integers))


// First, we set up the source and destination arrays
var integers = [3,8,1,6,2,0,5,7];
var odds     = [];
var evens    = [];

// Then define the loop
for (var n = 0; n < integers.length; n++) {
 if (integers[n] % 2 === 0) {
   evens.push(integers[n]);
 } else {
   odds.push(integers[n]);
 }
}

console.log(integers);
console.log(odds);
console.log(evens);


// function filter(array,test) {
//   var passed = [];
//   for (var i = 0; i < array.length; i++) {
//     if(test(array[i]))
//       passed.push(array[i]);
//   }

//   return passed;
// }

// // var integers = [3,8,1,6,2,0,5,7];

// console.log(filter([3,8,1,6,2,0,5,7],function(arg){
//   true ;
// }));


// "We built this city"


function Athlete(name,age,sport,quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge? I learned to work with .reverse and .split. I attempted to use a funtion Filter for the even number problem but wasn't able to work it out just yet still it was an interesting attempt.
// What are constructor functions? Constructor function is a function to create and Object type in JS, then you create the instances by using .New method
// How are constructors different from Ruby classes (in your research)? In JavaScript any function can become a constructor function unlike in Ruby , I would say that is the biggest difference.