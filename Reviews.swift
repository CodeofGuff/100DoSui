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


// Checkpoint 7
// I left this as a  basic skeleton. I wan to add more to it later on
class Animal {
    var legs = 4
}
class Dog: Animal {
    let isGoodDog = true
    var name: String
    init(name: String) {
        self.name = name
    }

    func speak() {
        print("Woof!")
    }
}
class Cat: Animal {
    var isTame: Bool
    init(isTame: Bool) {
        self.isTame = isTame
    }
    
    func speak() {
        print("Meo")
    }
}
class Corgi: Dog { override func speak() { print("Yap yap yap!") } }
class Tuxedo: Cat { init() { super.init(isTame: true) }; override func speak() { print("Puurraaahhhhh") } }



// Checkpoint 8

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    func salesSum()
}


struct House: Building {
    var rooms = 4
    var cost = 400_500
    var agent = "Bob Smith"
    func salesSum() {
        print("The house for sale has \(rooms), at a price of \(cost) dollars listed by \(agent).")
    }
}

//struct Office: Building {}
