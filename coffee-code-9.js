function narc(integer) {
var s = integer.toString();
var sum = 0;
for (i = 0, len = s.length; i < len; i++) {
  sum += Math.pow(s[i],len);
}
if (sum === integer) {
  console.log("This is a narcissistic number.");
}
else {
  console.log("This is not a narcissistic number.");
}
}

narc(153);
narc(232);
narc(500)

function todaydate(){
  var day = new Date();
  day_n = day.getDay();
  switch (day_n) {
    case 0:
    var day_name = 'Sunday';
    break;
    case 1:
    var day_name = 'Monday';
    break;
    case 2:
    var day_name = 'Tuesday';
    break;
    case 3:
    var day_name = 'Wednesday';
    break;
    case 4:
    var day_name = 'Thursday';
    break;
    case 5:
    var day_name = 'Friday';
    break;
    case 6:
    var day_name = 'Saturday';
    break;
  }

  var hour = day.getHours()
  if (hour > 12) {
    var hour_str = (hour - 12) + ' PM';
  }
    else {
    var hour_str = hour + ' AM';
    }

var minutes = day.getMinutes();
var seconds = day.getSeconds();

    console.log('Today is : ' + day_name + '. Current time is : ' + hour_str + ' : ' + minutes + ' : ' + seconds)
  }

  todaydate();
