//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    let locationmanger = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationmanger.delegate = self
        locationmanger.requestWhenInUseAuthorization()
        locationmanger.requestLocation()
        
        

        searchTextField.delegate = self
        weatherManager.delegate = self

    }
    
    @IBAction func locationPressed(_ sender: UIButton) {
        locationmanger.requestLocation()
    }
    
    
}


//MARK: - UITextFieldDelegate



extension WeatherViewController: UITextFieldDelegate {
    
    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        searchTextField.text = ""
    }
    
}

//MARK: - WeatherManagerDelegate

extension WeatherViewController : WeatherManagerDelegate {
    
    func didUpdateWeather(_ weatherManger: WeatherManager, weather : WeatherModel) {
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperatureString
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
            self.cityLabel.text = weather.cityName
            }
        }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
}

//MARK: - didUpdateLocationsDelegate

extension WeatherViewController : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationmanger.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            weatherManager.fetchWeather( latitude: lat, longitude: lon  )
        }
        
    }
    
    func locationManager(_: CLLocationManager, didFailWithError: Error) {
        print(didFailWithError)
    }

    
    
}

