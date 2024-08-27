//
//  CoinManager.swift
//  Byte Coin
//
//  Created by Subhosting's Mac Mini on 19/09/23.
//

import Foundation

struct CoinModel {
    var coinAssetId: String
    var coinRate: Double
    var coinRateString: String {
        return String(format: "%.2f", coinRate)
    }
    var currencies: [String] = ["AUD", "BRL","CAD",
                                "CNY","EUR","GBP",
                                "HKD","IDR","ILS",
                                "INR","JPY","MXN",
                                "NOK","NZD","PLN",
                                "RON","RUB","SEK",
                                "SGD","USD","ZAR"]
}
