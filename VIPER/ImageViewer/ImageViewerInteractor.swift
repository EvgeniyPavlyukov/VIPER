//
//  ImageViewerInteractor.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 25.11.2022.
//

import UIKit

protocol ImageViewerInteractorProtocol: AnyObject {
    func getImageForCurrentTemperature() -> UIImage?
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
    
    weak var presenter: ImageViewerPresenterProtocol?
    let temperature: Int
    
    init(temperature: Int) {
        self.temperature = temperature
    }
    
    
    func getImageForCurrentTemperature() -> UIImage? {
        switch temperature {
        case ..<0 : return UIImage(systemName: "snowflake")
        case 0...10 : return UIImage(systemName: "cloud.fill")
        case 11... : return UIImage(systemName: "sun.min.fill")
        default: return UIImage()
        }
        
//        if temperature < 0 {
//            return UIImage(systemName: "snowflake")
//        } else if temperature >= 0, temperature < 10 {
//            return UIImage(systemName: "cloud.fill")
//        } else {
//            return UIImage(systemName: "sun.min.fill")
//        }
    }
}
