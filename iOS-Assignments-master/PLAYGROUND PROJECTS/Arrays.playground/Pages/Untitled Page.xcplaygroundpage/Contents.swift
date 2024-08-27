import UIKit

var numbers: [Int] = [2,4,6,8]
var digits: [Int] = [12,14,16,18]
var languages: [String] = ["SWIFT","JAVA","C++"]

//print specific value from array
print("Array : \(numbers)")
print(languages[1])

// Add value to the array
numbers.append(11)
print("Array : \(numbers)")

//Combine two arrays
numbers.append(contentsOf: digits)

//insert an element
numbers.insert(33, at: 2)

// remove an element
numbers.remove(at: 5)

// count of array
print("Array : \(numbers)")
print(numbers.count)



//Make an array called numbers. Create another array called computedNumbers. computedNumbers should multiply each element in the numbers array by the next element. The last element should be multiplied by the first...
var numbersArray: [Int] = [2,4,6,8]
var computedNumbers: [Int] = [2*4, 4*6, 6*8, 8*2]
print(computedNumbers)
