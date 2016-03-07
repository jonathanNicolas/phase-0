// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// get number into an array
// reverse the array
// get the length of the array
// set a counter = 0
// while counter < length  do
// insert comma at array[counter +3]
// increment the counter +3

// join the elements of the array
// print



// Initial Solution

// var number = 233498354253420;

// var seperateComma = function(number) {
//   var array = number.toString().split('');
//   var reverseArray = array.reverse();
//   var counter = 3;

//   while (counter < reverseArray.length){
//       reverseArray.splice(counter,0,',');
//       counter += 4;
//    }

// reverseArray = reverseArray.reverse();
// reverseArray = reverseArray.join('');

// return reverseArray;

// }
// console.log(seperateComma(number))


// var separateComma = function(number) {
// var array = number.toString().split('');
// var reverseArray = array.reverse();
// console.log(reverseArray);

//  var i = 3;
//  while (i < reverseArray.length ) {

//  reverseArray.splice(i,0,",");
//  i += 4;
// }
//  reverseArray.reverse();
//  return reverseArray.join();
// };

//  console.log(separateComma(98765123223));


// Refactored Solution

var formatNumber = function(num) {
   var array = num.toString().split('');
   var index = -3;
   while (array.length + index > 0) {
       array.splice(index, 0, ',');
       // Decrement by 4 since we just added another unit to the array.
       index -= 4;
   }
   return array.join('');
};

console.log(formatNumber(23343232254545))


// (function(){

//   function insertCommas(s) {

//     // get stuff before the dot
//     var d = s.indexOf('.');
//     var s2 = d === -1 ? s : s.slice(0, d);

//     // insert commas every 3 digits from the right
//     for (var i = s2.length - 3; i > 0; i -= 3)
//       s2 = s2.slice(0, i) + ',' + s2.slice(i);

//     // append fractional part
//     if (d !== -1)
//       s2 += s.slice(d);

//     return s2;

//   }


//   $('#theDudeAbides').text( insertCommas('1234567.89012' ) );


// });








// Your Own Tests (OPTIONAL)




// Reflection


// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently? I approached it exact same was as ruby
// What did you learn about iterating over arrays in JavaScript? I got to use the while-loop
// What was different about solving this problem in JavaScript? Updating the counter was a little tricky as when you insert the comma the counter needs to be updated by 4 and not 3.
// What built-in methods did you find to incorporate in your refactored solution? I used the .splice method on the array.

















 // var counter = 3
 //  while (counter < reverseArray.length) {
 //    reverseArray[counter] += ",";
 //    counter += 3
 //  }
 //  console.log(reverseArray);
 //  reverseArray.reverse();

 //  var formatedNumber = reverseArray.join('');

 //  return formatedNumber;