import UIKit
// Variable & Constant
let myString = "hello"
var cost = 3.14
let cnt: Int = 2
var shouldWe: Bool = true

print(myString)
print(cost)
print(cnt)
print(shouldWe)

let person: Int = 4
let bill: Double = 128
let tax: Double = 13
var split: Double = 0
let totalBill = (bill * (tax/100)) + bill

split = totalBill / Double(person)
print(split)


// String Interpolation
let firstName = "akshai"
let lastName = "murali"
let age = 50

let fullName = "My Name is " +  firstName + lastName + ". I am 50 years"
let aboutMe: String = "My Name is \(firstName) \(lastName) . I am \(age) years"
print(aboutMe)



