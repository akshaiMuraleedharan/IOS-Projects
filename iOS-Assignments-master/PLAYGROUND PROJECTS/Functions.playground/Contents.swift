import UIKit

func add() {
    var result: Int
    result = 10 + 5
    print(result)
}

func sub() {
    var subtraction: Int
    subtraction = 10 - 5
    print(subtraction)
}

func multiply() {
    var multiply: Int
    multiply = 10 * 5
    print(multiply)
}

func name() {
    var first: String = "Akshai"
    var last: String = " Murali"
    var fullName: String
    fullName = first + last
    print(fullName)
}

func showAll() {
    add()
    sub()
    multiply()
    name()
}

showAll()

