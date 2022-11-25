//
//  WelcomeModuleBuilder.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 22.11.2022.
//

import UIKit

class WelcomeModuleBuilder {
    static func build() -> WelcomeViewController {
        let interactor = WelcomeInteractor()
        let router = WelcomeRouter()
        let viewController = WelcomeViewController()
        let presenter = WelcomePresenter(interactor: interactor, router: router)
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.viewController = viewController // decision about going to dif section made by presenter
        return viewController
    }
}
