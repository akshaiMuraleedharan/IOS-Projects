import UIKit


//IF STATEMWNT
let number = 10

if(number > 0){
    print("Number is Positive")
}
else{
    print("Number is Negative")
}

//SWITCH
let dayOfWeek = 70

switch (dayOfWeek)
{
case 1:
    print("Sunday")
case 2:
    print("Monday")
case 3:
    print("Tuesday")
case 4:
    print("Wednesday")
case 5:
    print("Thursday")
case 6:
    print("Friday")
case 7:
    print("Saturday")
default:
    print("not a day")
}

//TERNARY
let mark = 50

let result = (mark >= 40) ? "pass" : "fail"
print("You " + result + " the exam")

