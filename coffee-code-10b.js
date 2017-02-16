// var parseNumbers = function(intStrs) {
//   nums = [];
//   intStrs.forEach(function(num) {
//     if (parseInt(num) === true) {
//      nums.push(num)}
//      else { nums.push(0) }
//   })
//   return nums;
// }
//
// parseNumbers(['10']);
//
//
// var parseNumbers = function(intStrs) {
//   return intStrs.map(function(x) {
//     if (x === '0') {
//       return 0;
//     }
//     else {
//       return parseInt(x)
//     };
//   })
// }

// You need to know that when you use map() you need to know that there are three arguments that it is looking for (current value, index, array).
// You can't pass parseInt directly into the map function because it will default to taking the 3 arguments for map which do not correspond to the map.
var parseNumbers = function(intStrs) {
  return intStrs.map(function(currentValue) {
      return parseInt(currentValue)
  });
}
