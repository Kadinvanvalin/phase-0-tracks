// function findLongestWord(arrayOfWords) {
// let longestWord = ""; 
// 	for(let i = 0; i < arrayOfWords.length; i++){
// 		 if(longestWord.length < arrayOfWords[i].length){
// 			longestWord = arrayOfWords[i];
// 		}
// 	}
// 	return longestWord;
// }
// const array =  ["long phrase","longest phrase","longer phrase"]
// console.log(findLongestWord(array));

//look at the first key value pair of obj 1, compair it to all the key value pairs of object two, then look at second key value pair, etc


// function findPair(object1, object2) {
// 	returnVal = false;
// 	for(key in object1){
// 		if(object2[key] && object1[key] === object2[key]) {
// 			returnVal = true;
// 		}
// 	}
// 	return returnVal;
// }


// console.log(findPair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
// console.log(findPair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));

// console.log(findPair({name: "Steven", age: 53}, {name: "Tamir", age: 54}));
// console.log(findPair({animal: "Doggy", legs: 4}, {animal: "Dog", legs: 3}));



//create a loop that runs using user input as the counter
//the loop should push a random word to an array
// the random word should
//			have a length of 1 - 10 and be random.... google random number methods to figure out length
//			the chars should be random... maybe put the alphabet in a string and using a random number select the char?
//  		if I do that I could create seemingly realish words with some rules about how many vowels are included in the word
function buildArray(lengthOfArray){
	newArray = [];
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	for(let i = 0; i < lengthOfArray; i++) {
		myword = "";
		for(let j = 0; j< (Math.floor(Math.random()*10)+1); j++){
			myword+= alphabet.substr((Math.floor(Math.random()*26)+1), 1)
		}
		newArray.push(myword)
	}
	console.log(newArray);
}

buildArray(5)