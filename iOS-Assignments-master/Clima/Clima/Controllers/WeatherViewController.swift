//
//  ViewController.swift
//  Clima
//
//  Created by Subhosting's Mac Mini on 01/09/23.
//
import UIKit
import CoreLocation

class WeatherViewController: UIViewController {
    
    //MARK: Outlets and Properties
    @IBOutlet weak var textFieldSearch: UITextField!
    @IBOutlet weak var temperaturLabel: UILabel!
    @IBOutlet weak var climaImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    
    var weatherCall = WeatherManager()
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weatherCall.delegate = self
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
    }
    
    //MARK: Button Action
    @IBAction func locationButtonAction(_ sender: UIButton) {
        locationManager.startUpdatingLocation()
        textFieldSearch.text = ""
    }
}

//MARK: - UITextFieldDelegate
extension WeatherViewController: UITextFieldDelegate {
    @IBAction func searchAction(_ sender: UIButton) {
        textFieldSearch.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldSearch.endEditing(true)
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        weatherCall.getWeather(withCityName: textFieldSearch.text?.trimmingCharacters(in: .whitespaces) ?? "")
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Search city here!"
            return false
        }
    }
}

//MARK: - WeatherManagerDelegate
extension WeatherViewController: WeatherManagerDelegate {
    func didGetWeatherData(weather: WeatherModel) {
        DispatchQueue.main.async {
            self.temperaturLabel.text = weather.temperstureString
            self.climaImageView.image = UIImage(systemName: weather.weatherContion)
            self.cityLabel.text = weather.cityName
        }
    }
    func didFinishWithError(_ error: Error) {
        DispatchQueue.main.async {
            let errorAlert = UIAlertController(title: "Error",
                                               message: error.localizedDescription,
                                               preferredStyle: UIAlertController.Style.alert)
            errorAlert.addAction(UIAlertAction(title: "OK",
                                               style: .default,
                                               handler: { action in
                self.textFieldSearch.text = ""
            }))
            self.present(errorAlert, animated: true, completion: nil)
        }
    }

}

//MARK: - CLLocationManagerDelegate
extension WeatherViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let myLocation = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = myLocation.coordinate.latitude
            let lon = myLocation.coordinate.longitude
            weatherCall.getWeather(lat: lat, lon: lon)
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        didFinishWithError(error.localizedDescription as! Error)
    }
}
