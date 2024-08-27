//
//  WeatherModel.swift
//  Clima
//
//  Created by Subhosting's Mac Mini on 12/09/23.
//

import Foundation

struct WeatherModel {
    //stored properties
    var weatherId: Int
    var temperature: Double
    var cityName: String
    
    //computed properties
    var weatherContion: String {
        switch weatherId {
        case 200...250:
            return "cloud.bolt.fill"
        case 300...350:
            return "cloud.drizzle.fill"
        case 500...550:
            return "cloud.rain.fill"
        case 600...650:
            return "cloud.snow.fill"
        case 700...750:
            return "smoke.fill"
        case 800:
            return "cloud.sun.fill"
        default:
            return "cloud.fill"
        }
    }
    
    var temperstureString: String {
        return String(format: "%.1f", temperature)
    }
    
}
