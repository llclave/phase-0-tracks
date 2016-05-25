var colors = ["blue", "green" , "yellow", "black"];
var names = ["Ed", "Margaret", "Lloyd", "Bob"];

colors.push("red");
names.push("Sam");

var horses = {};

for (var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses);