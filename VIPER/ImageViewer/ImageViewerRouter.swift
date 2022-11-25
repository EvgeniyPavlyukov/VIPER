//
//  ImageViewerRouter.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 25.11.2022.
//

import Foundation

protocol ImageViewerRouterProtocol: AnyObject {
    
}

class ImagerViewerRouter: ImageViewerRouterProtocol {
    weak var viewController: ImageViewerViewController? // роутеру нужно знать из какого вьюКонтроллера нужно брать инфу либо презентить
    
}
