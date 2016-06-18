var colors = ["brown", "black", "white", "grey"];
var name = ["greg", "samantha", "billy", "jessica"];

colors.push("green");
name.push("jeff");

var horses = {}

for (var i = 0; i < name.length; i++){
  horses[name[i]] = colors[i];
}

console.log(horses);