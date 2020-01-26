import UIKit

var str = "When I'm 64"

//** Naming my Class
class growingOld {
    
//** Defining my varibles
    var age: Int
    var newAge: Int
    var currentYear: Int

//** Initializing my varibles
    init() {
        age = 55
        newAge = 64
        currentYear = 2020
    }

//** Defining my functions
    func getYear() -> Int {
        return age
        return newAge
        return currentYear
    }
    
    func differenceYear() -> Int {
        return newAge - age
    }
    
}
//** Instantiate my Class
var m = growingOld()

var newYear = m.differenceYear() + m.currentYear

print("I will be 64 in \(newYear)")


