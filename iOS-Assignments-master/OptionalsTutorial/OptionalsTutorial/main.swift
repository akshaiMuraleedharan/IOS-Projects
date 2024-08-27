//
//  main.swift
//  OptionalsTutorial
//
//  Created by Subhosting's Mac Mini on 28/08/23.
//

import Foundation

let myOptionals: String?
var text: String

myOptionals = nil

//nill check
if myOptionals != nil {
    text = myOptionals!
} else {
    print("My optional is nill")
}

//optional binding
if let unwrappedOptional = myOptionals {
    text = unwrappedOptional
    print(text)
} else {
    print("My optional  is nill")
}


//default value
text = myOptionals ?? "My Optional is nil"
print(text)

//optional chaining
struct MyOptionalStruct {
    var property = 123
    
    func method() {
        print("I am a struct method")
    }
}

let myStruct: MyOptionalStruct?
myStruct = nil
let prop = myStruct?.property
myStruct?.method()
print(prop as Any)

