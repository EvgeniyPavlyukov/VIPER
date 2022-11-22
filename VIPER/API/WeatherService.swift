//
//  WeatherService.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 22.11.2022.
//

import Foundation

class WeatherServide {
    func getWeather(completion: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // just to simulate data receiving from internet
            let temperature = Int.random(in: -30...30)
            completion(temperature)
        }
    }
}
