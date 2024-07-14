// Day 2



// Booleans
// Booleans are true or false


let filename = "paris.jpg"
print(filename.hasSuffix(".jpg")) // hasSuffix or is does, true or false

let number = 120
print(number.isMultiple(of: 3)) //


let goodCat = true

var gameOver = false
print(gameOver)
gameOver.toggle() // same as !gameOver
print(gameOver)

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !false
print(isAuthenticated)



// String interpolation
let firstPart = "Hello, "
let secondPart = "world!"
let greet = firstPart + secondPart

let greeting = firstPart + "to the " + secondPart

let luggageCode = "1" + "2" + "3" + "4"+"5"
 // adds it like "12" then "123" then "1234" then "12345"

let quote = "The luggage code is \(luggageCode)"

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I am \(age) years old"
print(message)


print("5x 5 is \(5 * 5)")



// REVIEW
// Swift lets us create constants using let, and variables using var.
// If you don’t intend to change a value, make sure you use let so that Swift can help you avoid mistakes.
// Swift’s strings contain text, from short strings up to whole novels. They work great with emoji and any world language, and have helpful functionality such as count and uppercased().
// You create strings by using double quotes at the start and end, but if you want your string to go over several lines you need to use three double quotes at the start and end.
// Swift calls its whole numbers integers, and they can be positive or negative. They also have helpful functionality, such as isMultiple(of:).
// In Swift decimal numbers are called Double, short for double-length floating-point number. That means they can hold very large numbers if needed, but they also aren’t 100% accurate – you shouldn’t use them when 100% precision is required, such as when dealing with money.
// There are lots of built-in arithmetic operators, such as +, -, *, and /, along with the special compound assignment operators such as += that modify variables directly.
// You can represent a simple true or false state using a Boolean, which can be flipped using the ! operator or by calling toggle().
// String interpolation lets us place constants and variables into our strings in a streamlined, efficient way.

