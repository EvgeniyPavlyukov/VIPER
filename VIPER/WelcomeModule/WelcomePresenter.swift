//
//  WelcomePresenter.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 22.11.2022.
//

import Foundation

protocol WelcomePresenterProtocol: AnyObject {
    func viewDidLoaded()
    func didTappedImageButton() //ответственность вьюхи просто зафиксировать событие нажатия
    func didLoad(date: String?)
    func didLoad(weather: Int?)
}


class WelcomePresenter {
    weak var view: WelcomeViewProtocol? //слабая ссылка на вью не забыть
    var router: WelcomeRouterProtocol
    var interactor: WelcomeInteractorProtocol
    
    init(interactor: WelcomeInteractorProtocol, router: WelcomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}


extension WelcomePresenter: WelcomePresenterProtocol {
    func didTappedImageButton() {
        let temperature = interactor.temperature
        router.openImage(for: temperature)
    }
    
    func viewDidLoaded() {
        //start loading info
        interactor.loadDate()
        interactor.loadWeather()
    }
    
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date error")
    }
    
    func didLoad(weather: Int?) {
        let temperature = weather?.description ?? "No weather error"
        view?.showWeather(weather: temperature)
    }
    
    
    
    
}
