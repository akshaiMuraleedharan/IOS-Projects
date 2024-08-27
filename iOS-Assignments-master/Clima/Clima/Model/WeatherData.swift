//
//  WeatherData.swift
//  Clima
//
//  Created by Subhosting's Mac Mini on 08/09/23.
//

struct WeatherData: Codable {
    var name: String
    var base: String
    var main: Main
    var weather: [Weathers]
}

struct Main: Codable {
    var temp: Double
}

struct Weathers: Codable {
    var id: Int
    var description: String
}
