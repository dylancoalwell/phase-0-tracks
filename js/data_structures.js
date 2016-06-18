var colors = ["brown", "black", "white", "grey"];
var name = ["greg", "samantha", "billy", "jessica"];

colors.push("green");
name.push("jeff");

var horses = {}

for (var i = 0; i < name.length; i++){
  horses[name[i]] = colors[i];
}

console.log(horses);

function Car(model, color, year) {
  console.log("new car", this);
  
  this.model = model;
  this.color = color;
  this.year = year;
  
  this.drive = function(speed) { console.log("Car is going " + speed + "."); };
  console.log("CAR INITIALIZATION COMPLETE");
}

var newCar = new Car("civic", "red", 1998);
console.log(newCar);

newCar.drive("25 mph");