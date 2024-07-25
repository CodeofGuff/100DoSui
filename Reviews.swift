// FizzBuzz

 for i in 1...100 {
    if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else {
        print(i)
    }
}



// Checkpoint 5
// using sorted() filter() map()

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
luckyNumbers 
    .filter { $0 % 2 != 0} // filter even nums
    .sorted() // sorts
    .map { "\($0) is a lucky number!"} // maps them to srring
    .forEach { print($0) } // prints
