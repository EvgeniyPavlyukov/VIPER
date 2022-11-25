//
//  ImageViewerViewController.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 25.11.2022.
//

import UIKit
import Foundation

protocol ImageViewerViewProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
    var imageView: UIImageView!
    var presenter: ImageViewerPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createImageView()
        presenter?.viewDidLoaded()
        
    }
    
    func createImageView() {
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        imageView.center = view.center
        view.addSubview(imageView)
    }
    


}

extension ImageViewerViewController: ImageViewerViewProtocol {
    func showImage(image: UIImage?) {
        DispatchQueue.main.async { //переходим на главный поток
            self.imageView.image = image
        }
    }
}
