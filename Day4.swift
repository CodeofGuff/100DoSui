//Day 4




// Type annotations
// Allows explicicty in swift
let surname = "Lasso"  // swift infers surname is a String as "Lasso" is in it
var score = 0

//Type annotation looks like
let surname2: String = "Lasso"
var score2: Double = 0

let Playername: String = "Roy"
let luckyNumber: Int = 12
let isTrue: Bool = true
let albums: [String] = ["Red", "Fearless"]
let user: [String: String] = ["id": "guff"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])


// Use Type annots to make empty things
var soda: [String] = [String]()
var soda2 = [String]()
var soda3: [String] = [] // inference and my fave


enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
// type is now defined!! we dont need to deinfe it later in the socde
//
style = .dark


// Prefer to use type inferance
// Define a type at creation like:
var definedString = "String"
var definedInt = 0
var definedDouble = 0.0
var definedBool = true
var definedArray = ["Default"]
var definedDict = ["Default: Dict"]
var definedSetString = Set(["String"])
print(type(of: definedSetString))


// REVIEW
// Arrays let us store lots of values in one place, then read them out using integer indices. 
//  Arrays must always be specialized so they contain one specific type, and they have helpful functionality such as count, append(), and contains().
// Dictionaries also let us store lots of values in one place, but let us read them out using keys we specify. 
//  They must be specialized to have one specific type for key and another for the value, and have similar functionality to arrays, such as contains() and count.
// Sets are a third way of storing lots of values in one place, but we don’t get to choose the order in which they store those items. 
//  Sets are really efficient at finding whether they contain a specific item.
// Enums let us create our own simple types in Swift so that we can specify a range of acceptable values such as a list of actions 
//  the user can perform, the types of files we are able to write, or the types of notification to send to the user.
// Swift must always know the type of data inside a constant or variable, and mostly uses type inference to figure that out based on the data we assign. 
//  However, it’s also possible to use type annotation to force a particular type.


// This time the challenge is to create an array of strings, 
// then write some code that prints the number of items in the array and also the number of unique items in the array.


let itemBag: [String] = ["Rope", "CoinBag", "Axe", "Ladel", "Rope"]
let dupeChecker: Set<[String]> = Set([itemBag])
print("You have \(itemBag.count) items in your bad and \(dupeChecker.count) of them are duplicates")

print(dupeChecker)