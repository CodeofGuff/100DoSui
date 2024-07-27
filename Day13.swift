//Day13



// Protocol and Extensions

// Create and use protocols
// Protocols act like contracts, they let us define what kinds of functionality we epect  data type to support
// Define a series of properties and methods, with no actual code behind it.
// method bodies do not have any function bodies, we are just specifiying the names, params, and return types, (mutating, throwing etc)
protocol Vehicle {
    var seats: Int { get } // readable
    var passengers: Int { get set } // readable / writable
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
// With this protocol we can design types to work with it.
// Adopting or Conforming to the Protocol.. any struct, enum or class that conforms to the protocol must call those funcs/props

protocol CanBeElectric {
}
struct Car: Vehicle, CanBeElectric { // conforming or adopting Vehicle, similar to SubClasses
    let seats = 4
    var passengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I am driving \(distance) miles")
    }
    func openSunRoof() {
        print("It is a nice day!")
    }
}

struct Bicycle: Vehicle {
    let seats = 2
    var passengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    func travel(distance: Int) {
        print("I am cycling \(distance) miles")
    }
}

func commute(distance: Int, using vehicle: Vehicle) { // Vehicle can be used instead of Car, allowing any param to be placed with the Vehicle protocol
    if vehicle.estimateTime(for: distance) > 100 {
        print("To SLOW!!")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.seats) seats are available for the \(distance) mile trip, which will take \(vehicle.estimateTime(for: distance)) hours!")
    }
}

let car = Car()
commute(distance: 100, using: car)
    
let bike = Bicycle()
commute(distance: 101, using: bike)
getTravelEstimates(using: [car, bike], distance: 50)



// Opaque Return Types
// some Equatable instead of Int, Bool, String, Double
// Letting swift know we are returning a bunch of things but I want swift to interpret it and figure it out, like in a View
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...3)
}
func getRandomBool() -> some Equatable {
    Bool.random()
}
print(getRandomNumber() == getRandomNumber() ? print("Yay!") : print("Boo!"))

let i = getRandomNumber()
if i == 2 { // doesnt work with some Equatable != Int
    print("yay! a 2")
} else {
    print("Boo not a 2!")
}
