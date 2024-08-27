import UIKit

let alphabet: [String]! = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

let password = alphabet[Int.random(in: 0...25)]
let password1 = alphabet[Int.random(in: 0...25)]
let password2 = alphabet[Int.random(in: 0...25)]
let password3 = alphabet[Int.random(in: 0...25)]
let password4 = alphabet[Int.random(in: 0...25)]
let password5 = alphabet[Int.random(in: 0...25)]

let sixDigitPassword = password + password1 + password2 + password3 + password4 + password5
print("Password:", sixDigitPassword)

var number: Int = Int.random(in: 0...25)
print(number)
