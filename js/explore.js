// PSEUDOCODE FOR REVERSE FUNCTION
// reverse function takes in one string input
// reversedString varable will be set to an empty string
// FOR each character in string input, starting from the last character and ending with the first character
//		add the character to the reversedString variable
// RETURN reversedString variable


// REVERSE FUNCTION
function reverse(stringInput) {
	reversedString = ''
	for (var i = stringInput.length - 1; i >= 0; i--) {
		reversedString = reversedString + stringInput[i];
	}
	return reversedString
}


// TEST CODE
// console.log(reverse("Reverse this string!"));
// console.log(reverse("test 2"));


// DRIVER CODE
var storedReverse = reverse("Chicken noodle soup!")

if (1 + 1 == 2) {
	console.log(storedReverse)
}