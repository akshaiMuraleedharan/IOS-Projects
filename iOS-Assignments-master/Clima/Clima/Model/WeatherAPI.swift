//
//  WeatherAPI.swift
//  Clima
//
//  Created by Subhosting's Mac Mini on 07/09/23.
//
import UIKit
import CoreLocation

protocol WeatherManagerDelegate {
    func didGetWeatherData(weather: WeatherModel)
    func didFinishWithError(_ error: Error)
}

struct WeatherManager {
    var baseUrl = "https://api.openweathermap.org/data/2.5/weather?appid=189880843c3396dc08ffa4f369100087&units=metric"
    var delegate: WeatherManagerDelegate?
    
    func getWeather(withCityName city: String) {
        let fullUrl: String = "\(baseUrl)&q=\(city)"
        performRequest(with: fullUrl)
    }
    func getWeather(lat: CLLocationDegrees, lon: CLLocationDegrees) {
        let fullURL: String = "\(baseUrl)&lat=\(lat)&lon=\(lon)"
        performRequest(with: fullURL)
    }
    
    func performRequest(with mainUrl: String) {
        if let url = URL(string: mainUrl) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { apiData, apiResponse, apiError in
                if apiError != nil {
                    delegate?.didFinishWithError(apiError!)
                    return
                }
                if let safeData = apiData {
                    if let weatherModel = self.parseJSON(safeData) {
                        delegate?.didGetWeatherData(weather: weatherModel)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ apiData: Data) -> WeatherModel? {
      let decoder = JSONDecoder()
        do {
            let parsedObject = try decoder.decode(WeatherData.self, from: apiData)
            let id = parsedObject.weather[0].id
            let temp = parsedObject.main.temp
            let city = parsedObject.name
            let weatherModel = WeatherModel(weatherId: id, temperature: temp, cityName: city)
            return weatherModel
        } catch {
            delegate?.didFinishWithError(error)
            return nil
            
            
        }
    }

}
