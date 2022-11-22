//
//  WelcomeInteractor.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 22.11.2022.
//

import Foundation

protocol WelcomeInteractorProtocol: AnyObject {
    func loadDate()
    func loadWeather()
}


class WelcomeInteractor: WelcomeInteractorProtocol {

    weak var presenter: WelcomePresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherServide()

    func loadDate() {
        dateService.getDate {[weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather {[weak self] weather in
            self?.presenter?.didLoad(weather: weather)
        }
    }
    
}
