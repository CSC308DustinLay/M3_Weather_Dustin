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
        
        let weather = "Sunny"
        let temperature = 72
        
        //Set Labels
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)°F"
        
        //Set Image
        switch weather
        {
            case "Sunny":
                ImageView.image = UIImage(named: "sunny")
                background.backgroundColor = UIColor.yellow
            case "Cloudy":
                ImageView.image = UIImage(named: "cloudy")
                background.backgroundColor = UIColor.gray
            case "Raining":
                ImageView.image = UIImage(named: "rainy")
            background.backgroundColor = UIColor.systemTeal
            case "Snowing":
                ImageView.image = UIImage(named: "snowy")
            background.backgroundColor = UIColor.white
            default:
                ImageView.image = UIImage(named: "weather")
                statusLabel.text = "Unknown"
                temperatureLabel.text = "N/A"
        }
        
        switch temperature
        {
            case ..<20:
            messageLabel.text = "Extremely Cold"
            case 20...49:
            messageLabel.text = "Cold"
            case 50...68:
            messageLabel.text = "Cool and mild"
            case 69...85:
            messageLabel.text = "Hot"
            case 86...:
            messageLabel.text = "Extremely Hot"
            default :
            messageLabel.text = ""
        }
    }
}

