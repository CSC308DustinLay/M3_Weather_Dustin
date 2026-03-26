//
//  ViewController.swift
//  M3_Weather_Dustin
//
//  Created by Dustin Lay on 2/5/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet var background: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = [Weather.sunny, Weather.rainy, Weather.snowy, Weather.cloudy].randomElement() ?? .sunny
        let temperature = Int.random(in: 0...100)
        
        //Set Labels
        statusLabel.text = weather.rawValue
        temperatureLabel.text = "\(temperature)°F"
        
        //get Image
        ImageView.image = weather.image
        //get Temperature
        messageLabel.text = weather.getTemperature(matching: temperature)
    }
}

