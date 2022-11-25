//
//  ImageViewerModuleBuilder.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 25.11.2022.
//

import UIKit

class ImageViewerModuleBuilder {
    static func build(temperature: Int) -> ImageViewerViewController {
        let interactor = ImageViewerInteractor(temperature: temperature)
        let router = ImagerViewerRouter()
        let viewController = ImageViewerViewController()
        let presenter = ImageViewerPresenter(router: router, interactor: interactor)
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.viewController = viewController // decision about going to dif section made by presenter
        return viewController
    }
}
