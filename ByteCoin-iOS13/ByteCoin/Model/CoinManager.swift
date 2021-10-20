//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


private var apiKey : String {
    get {
        guard let filePath = Bundle.main.path(forResource: "Key", ofType: "plist") else {
            fatalError("couldn't find file 'Key.plist'.")
    }
    
    let plist = NSDictionary(contentsOfFile: filePath)
                                              
    guard let value = plist?.object(forKey: "ByteCoin_Key") as? String else {
    fatalError("Couldn't find key 'ByteCoin_Key' in 'KeyList.plist'.")
    }
    return value
    }
}


struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    
    
    func getCoinPrice(for currency: String) {
        
        let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"

        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                  if error != nil {
                      print(error!)
                      return
                  }
                
                  let dataAsString = String(data: data!, encoding: .utf8)
                    print(dataAsString)
        }
        
            task.resume()
        }
    }
    
}
