// Lloyd Clave and Margaret Kamimoto

var colors = ["blue", "green" , "yellow", "black"];
var names = ["Ed", "Margaret", "Lloyd", "Bob"];

colors.push("red");
names.push("Sam");

var horses = {};

for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);

function Car(year, make, model) {
  console.log("Our new car: " + year + " " + make + " " + model);
  
  this.year = year;
  this.make = make;
  this.model = model;
  this.insurance = true;
  this.drive = function() { console.log("VROOOOOOM!!"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
}

var lloydCar = new Car(2012, "Volkswagon", "Beetle");

var margaretCar = new Car(2014, "Jeep", "Liberty");

var funCar = new Car(2016, "Ferrari", "LaFerrari");

console.log();

console.log("The " + lloydCar.make + " " +lloydCar.model + " has insurance: " + lloydCar.insurance);
console.log("The " + lloydCar.model + " will now drive!");
lloydCar.drive();

console.log("The " + margaretCar.make + " " + margaretCar.model + " has insurance: " + margaretCar.insurance);
console.log("The " + margaretCar.model + " will now drive!");
margaretCar.drive();

console.log("The " + funCar.make + " " + funCar.model + " has insurance: " + funCar.insurance);
console.log("The " + funCar.model + " will now drive!");
funCar.drive();
