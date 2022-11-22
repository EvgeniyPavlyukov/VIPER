//
//  ViewController.swift
//  VIPER
//
//  Created by Eвгений Павлюков on 22.11.2022.
//

import UIKit
import Foundation

protocol WelcomeViewProtocol: AnyObject {
    func showDate(date: String)
    func showWeather(weather: String)
}

class WelcomeViewController: UIViewController {
    var dateLabel: UILabel!
    var weatherLaber: UILabel!
    var presenter: WelcomePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createDateLabel()
        createWeatherLabel()
        presenter?.viewDidLoaded()
        
    }
    
    func createDateLabel() {
        dateLabel = UILabel(frame: CGRect(x: 100, y: 400, width: 200, height: 30))
        dateLabel.center = view.center
        dateLabel.numberOfLines = 1
        dateLabel.lineBreakMode = .byWordWrapping
        dateLabel.font = UIFont.boldSystemFont(ofSize: 20)
        dateLabel.textColor = UIColor.black
        dateLabel.shadowColor = UIColor.lightGray
        dateLabel.shadowOffset = CGSize(width: 3, height: 3)
        dateLabel.lineBreakMode = .byWordWrapping
        view.addSubview(dateLabel)
    }
    
    func createWeatherLabel() {
        weatherLaber = UILabel(frame: CGRect(x: 170, y: 270, width: 100, height: 23))
        weatherLaber.numberOfLines = 1
        weatherLaber.lineBreakMode = .byWordWrapping
        weatherLaber.font = UIFont.boldSystemFont(ofSize: 20)
        weatherLaber.textColor = UIColor.black
        weatherLaber.shadowColor = UIColor.lightGray
        weatherLaber.shadowOffset = CGSize(width: 3, height: 3)
        weatherLaber.lineBreakMode = .byWordWrapping
        view.addSubview(weatherLaber)
    }
    


}

extension WelcomeViewController: WelcomeViewProtocol {
    func showDate(date: String) {
        DispatchQueue.main.async {
            self.dateLabel.text = date
        }
    }
    
    func showWeather(weather: String) {
        DispatchQueue.main.async {
            self.weatherLaber.text = weather
        }
        
    }
    
    
}

