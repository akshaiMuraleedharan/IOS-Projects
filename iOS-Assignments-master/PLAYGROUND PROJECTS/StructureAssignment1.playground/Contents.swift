import UIKit

struct Car {
    var make: String
    var name: String
    var features: [String]
    var spec: [String: Int]
    
    init(carMake: String,
         carName: String,
         carFeatures: [String],
         carSpec: [String: Int]) {

        make = carMake
        name = carName
        features = carFeatures
        spec = carSpec
    }
    
    func drive() {
        print("Move Forward")
    }
    func reverse() {
        print("Slow Down")
    }
}

var myFordCar = Car (carMake: "Ford",
                     carName: "Figo",
                     carFeatures: ["AC", "Power Window"],
                     carSpec: ["mileage": 20])
print(myFordCar.name)
