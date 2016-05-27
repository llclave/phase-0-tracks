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
	var longest_item = ""
	for (var i = 0; i < stringArray.length; i++) {
		if (stringArray[i].length > longest_item_length) {
			longest_item_length = stringArray[i].length;
			longest_item = stringArray[i];
		}
	}
	return longest_item;
}


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
					return true
				}
			}
		}
	}
	return false
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




