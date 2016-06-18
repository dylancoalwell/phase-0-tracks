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

var longArray = ["short", "not long", "This is totally the longest", "tiny"];
var longArray2 = ["No way this is longest", "This is way longer I bet."];
longestWord(longArray);
longestWord(longArray2);