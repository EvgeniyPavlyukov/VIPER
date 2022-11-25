//
//  WelcomeRouter.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 22.11.2022.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject {
    func openImage(for temperature: Int)
}

class WelcomeRouter: WelcomeRouterProtocol {
    
    weak var viewController: WelcomeViewController? // router ссылается на презентер слабо, а презентер на router слабо
    
    func openImage(for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature)
        viewController?.present(vc, animated: true, completion: nil)
    }
    
}
