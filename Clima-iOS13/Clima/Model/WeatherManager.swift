//
//  WeatherManager.swift
//  Clima
//
//  Created by 한송희 on 2021/10/12.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation


import Foundation
import CoreLocation

protocol WeatherManagerDelegate {
    func  didUpdateWeather(_ weatherManger: WeatherManager, weather : WeatherModel)
    func didFailWithError (error: Error)
}




private var apiKey : String {
    get {
        guard let filePath = Bundle.main.path(forResource: "Key", ofType: "plist") else {
            fatalError("couldn't find file 'Key.plist'.")
    }
    
    let plist = NSDictionary(contentsOfFile: filePath)
                                              
    guard let value = plist?.object(forKey: "Clima_Key") as? String else {
    fatalError("Couldn't find key 'Clima_Key' in 'KeyList.plist'.")
    }
    return value
    }
}


struct WeatherManager {
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/master
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?units=metric"
    
    var delegate : WeatherManagerDelegate?
<<<<<<< HEAD

    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid={appid}&units=metric"

=======
=======
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid={appid}&units=metric"
>>>>>>> 7547201f35a820a960ef0ce677e04b02ec85219b
>>>>>>> origin/master
 
    func fetchWeather(cityName : String) {
        let urlString = "\(weatherURL)&q=\(cityName)&appid=\(apiKey)"
        performRequest(with: urlString)
        }
    func fetchWeather( latitude: CLLocationDegrees, longitude : CLLocationDegrees) {
      
        let urlString = "\(weatherURL)&lat=\(latitude)&lon=\(longitude)&appid=\(apiKey)"
        performRequest(with: urlString)
        }
        
  
    func performRequest(with urlString: String) {
            
        if let url = URL(string: urlString) {
          let session = URLSession(configuration: .default)
          let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
               
                if let safeData = data {
                    if let weather = self.parseJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weather: weather)
                        
                    }
                }
                 
            }
            task.resume()
        }
        
    }
                                                   
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionID: id, cityName: name, temperature: temp)
            return weather
            
            print(weather.conditionName)
            print(weather.temperatureString)
            
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    

        
  
}

