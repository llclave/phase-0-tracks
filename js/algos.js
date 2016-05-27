// Longest String Function PSEUDOCODE
// Input: array of strings
// Steps:
// 		initialize longest_item_length variable to 0
// 		initialize longest_item variable to empty string
// 		FOR each item in array of strings
// 			IF the current item's length is greater than the longest_item_length variable
// 				set longest_item_length variable equal to the current item's length
// 				set longest_item variable equal to the current item
// Return: Longest Item(string) from input array

// Longest String Function CODE
function longestString(stringArray) {
	var longest_item_length = 0;
	var longest_item = "";
	for (var i = 0; i < stringArray.length; i++) {
		if (stringArray[i].length > longest_item_length) {
			longest_item_length = stringArray[i].length;
			longest_item = stringArray[i];
		}
	}
	return longest_item;
}
// NOTE: This function will only return the first longest phrase. If there are phrases that are of equal length with the longest phrase, only the first one will be returned.



// Key-Value Match Function PSEUDOCODE 
// Input: object1, object2
// Steps:
// 		FOR each key in object1
// 			FOR each key in object2
// 				IF current key in object1 is equal to the current key in object2
// 					IF the value of the current key in object1 is equal to the value of the the current key in object2
//						RETURN true
// Return: boolean

// Key-Value Match Function CODE
function keyValueMatch(obj1, obj2) {
	for (var key1 in obj1) {
		for (var key2 in obj2) {
			if (key1 == key2) {
				if (obj1[key1] == obj2[key2]) {
					return true;
				}
			}
		}
	}
	return false;
}



// Generate Random Array of Strings Function PSEUDOCODE
// Input: integer for length length of array
// Steps:
// 		initialize array of strings to empty array
// 		initialize alphabet variable to all letters
// 		FOR each number starting from 0, while the number is less than the input integer
// 			generate a random number from 1 to 10 (including 1 and 10)
// 			initialize random string variable and set it to an empty string
// 			FOR each number starting from 0, while the number is less than the random number
// 				add a random character from alphabet variable to the random string variable
// 			add random string to the array of strings
// Return: array (with a length of input integer) of random strings

// Generate Random Array of Strings Function CODE
function genRandomStringArray(num) {
	var stringArray = [];
	var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	for (var i = 0; i < num; i++) {
		ranNum = Math.floor((Math.random() * 10) + 1);
		ranStr = "";
		for (var j = 0; j < ranNum; j++) {
			ranStr += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
		}
		stringArray.push(ranStr);
	}
	return stringArray;
}



// DRIVER/TEST CODE

// Longest String Function TEST
console.log("Longest String Function TEST");
arrayOfStrings = ["a", "aaa", "aaaaaaaa", "aaaa", "b", "bb", "bbbbbbbbbbbbbbbbb", "c", "cc", "ccccc"];
arrayOfStrings2 = ["long phrase","longest phrase","longer phrase"];
console.log(longestString(arrayOfStrings));
console.log(longestString(arrayOfStrings2));

console.log("");

// Key-Value Match Function TEST
console.log("Key-Value Match Function TEST");
console.log(keyValueMatch({name: "Steven", age: 54},{name: "Tamir", age: 54}));
console.log(keyValueMatch({name: "Steven", age: 5},{name: "Tamir", age: 54}));
console.log(keyValueMatch({'age': 54, name: "Steven"},{name: "Tamir", age: 54}));

console.log("");

// Generate Random Array of Strings Function TEST
console.log("Generate Random Array of Strings Function TEST");
console.log(genRandomStringArray(5));
console.log(genRandomStringArray(6));
console.log(genRandomStringArray(2));

console.log("");
console.log("");



// DRIVER CODE FOR RELEASE 2

// Loop 10 times
// 		call genRandomStringArray function with a random input (from 1 - 10)
// 		print array output from genRandomStringArray
// 		call longestString function and input array
//		print return of longestString function

console.log("DRIVER CODE FOR RELEASE 2");
for (var i = 0; i < 10; i++) {
	var randStringArray = genRandomStringArray(Math.floor((Math.random() * 10) + 1));
	console.log("Random Array: " + randStringArray);
	var longString = longestString(randStringArray);
	console.log("Longest Phrase: " + longString);
	console.log("Done with " + (i+1) +".");
	console.log("");
}








