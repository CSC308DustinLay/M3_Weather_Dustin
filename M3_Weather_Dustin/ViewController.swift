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
    
    func getWeatherImage(matching weather: String) -> UIImage?
    {
        switch weather
        {
            case "Sunny":
                return UIImage(named: "sunny")
            case "Cloudy":
                return UIImage(named: "cloudy")
            case "Raining":
                return UIImage(named: "rainy")
            case "Snowing":
                return UIImage(named: "snowy")
            default:
                return UIImage(named: "weather")
        }
    }
    
    func getTemperature(matching temp: Int) -> String
    {
        switch temp
        {
            case ..<20:
                return "Extremely Cold"
            case 20...49:
                return "Cold"
            case 50...68:
                return "Cool and mild"
            case 69...85:
                return "Hot"
            case 86...:
                return "Extremely Hot"
            default :
                return ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = ["Sunny", "Snowy", "Rainy", "Cloudy"].randomElement() ?? "Weather"
        let temperature = Int.random(in: 0...100)
        
        //Set Labels
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)°F"
        
        //get Image
        ImageView.image = getWeatherImage(matching: weather)
        //get Temperature
        messageLabel.text = getTemperature(matching: temperature)
    }
}

