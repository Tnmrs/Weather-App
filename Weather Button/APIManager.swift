//
//  APIManager.swift
//  Weather Button
//
//  Created by Дмитрий Сенаторов on 21.04.2023.
//

import Foundation

class APIManager {
    static let shared = APIManager()
    
    let urlString = "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m"
    
    func getWeather() {
        let url = URL(string: urlString)!
        var request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) {data, response, error in
            print(response)
        }
        task.resume()
    }
}
