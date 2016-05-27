// Longest String Function PSEUDOCODE
// Input: array of strings
// Steps:
// 		Initialize longest_item_length variable to 0
// 		Initialize longest_item variable to empty string
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

// DRIVER/TEST CODE
arrayOfStrings = ["a", "aaa", "aaaaaaaa", "aaaa", "b", "bb", "bbbbbbbbbbbbbbbbb", "c", "cc", "ccccc"];
arrayOfStrings2 = ["long phrase","longest phrase","longer phrase"];
console.log(longestString(arrayOfStrings));
console.log(longestString(arrayOfStrings2));