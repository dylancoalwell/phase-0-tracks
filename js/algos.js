/* Create a function that takes an array of strings as the parameter.
Compare the first string in the array with the second string.
Return which one is bigger.
Keep doing this through the whole array.
Return the longest string in the array.*/

function longestWord(array)	{
	var leng = 0;
	for(var i = 0; i < array.length; i++){
	    if(array[i].length > leng){
	        var leng = array[i].length;
	        var longest = array[i];
	    }      
	}
	console.log(longest);
}

/* Create function that takes two hashes
Compare the keys and values of the hashes.
If the hashes share a key pair or a value pair return true.
If they don't share either return false.
*/

function compareObjects(object1, object2) {
	for(var i = 0; i < array.length; i++){
	    if(object1[i] == object2[i] && object1[i][i] == object2[i][i]) {
	    	return true;
	    }
	    else {
	    	return false;
	    }
	}
}


var longArray = ["short", "not long", "This is totally the longest", "tiny"];
var longArray2 = ["No way this is longest", "This is way longer I bet."];
longestWord(longArray);
longestWord(longArray2);

var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
compareObjects(object1, object2);