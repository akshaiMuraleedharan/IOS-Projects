//
//  TipBusinessLogic.swift
//  Tipsy Exercise
//
//  Created by Subhosting's Mac Mini on 30/08/23.
//

import Foundation

struct TipBusinessLogic {
    var tip: Tip?
    
    mutating func calcuateTip(bill: Float, billTip: Float, numberOfPerson: Double) {
        let tipAmount = bill * (billTip / 100)
        let totalBill = bill + tipAmount
        let split = totalBill / Float(numberOfPerson)
        let person = String(format: "%.0f", numberOfPerson)
        let tips = String(format: "%.0f", billTip)
        tip = Tip(spltAmount: split, splitDetail: "Split between \(person) people, with \(tips)% tip")
    }
    
    func getSplitValue() -> String {
        let splitValue = String (format: "%.2f", tip?.spltAmount ?? 0.0)
        return splitValue
    }
    
    func getSplitDetail() -> String {
        return tip?.splitDetail ?? ""
    }
}


