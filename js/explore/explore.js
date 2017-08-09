module.exports.thisThing =  true


// take a string into a function
// turn the string into an array
// 		repeat until array empty take the last char of the array and push it into a new array
// 	convert array to string
// 	compair new_string with the orignal sting, if it the same, return error
// 	otherwise return new_string
module.exports.reverse = function reverse(string){
	const oldString = string
	let newString = ""
	let stringArray = string.split("")
		for(let i=0; i < string.length; i++){
				newString += stringArray.pop()
		}
		if(newString === oldString){
			return "error this is a palindrome!"
				}
				else {
					return newString
				}

}

let myvar = module.exports.reverse('hello')

if(1===1){
	console.log(myvar)
}