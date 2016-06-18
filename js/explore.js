/* A function that takes a string as a parameter.
Take string and iterate through it returning the string as the original string but reversed. */

function reverse(str) {
	for (var i = str.length; i >= 0; i--) {
		console.log(str[i]);
	}
}

var reversedWord = reverse("Reverse Me Please.");

if (1 < 9) {
	console.log(reversedWord);
}