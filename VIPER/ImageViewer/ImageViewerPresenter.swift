//
//  ImageViewerPresenter.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 25.11.2022.
//

import Foundation
import UIKit

protocol ImageViewerPresenterProtocol: AnyObject {
    func viewDidLoaded()
}


class ImageViewerPresenter {
    weak var view: ImageViewerViewProtocol?
    var router: ImageViewerRouterProtocol
    var interactor: ImageViewerInteractorProtocol
    
    init(router: ImageViewerRouterProtocol, interactor: ImageViewerInteractorProtocol) {
        self.router = router
        self.interactor = interactor
    }
}

extension ImageViewerPresenter: ImageViewerPresenterProtocol {
    func viewDidLoaded() {
        // можно убрать впринципе
        let image = interactor.getImageForCurrentTemperature()
        view?.showImage(image: image)
    }
}
