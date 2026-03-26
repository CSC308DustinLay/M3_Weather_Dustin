//
//  Weather.swift
//  M3_Weather_Dustin
//
//  Created by Heather Bishop on 3/26/26.
//

import UIKit

enum Weather: String
{
    case sunny = "Sunny", snowy = "Snowy", rainy = "Rainy", cloudy = "Cloudy"
    
    var image: UIImage?
    {
        switch self
        {
        case .sunny:
                return UIImage(named: "sunny")
        case .cloudy:
                return UIImage(named: "cloudy")
        case .rainy:
                return UIImage(named: "rainy")
        case .snowy:
                return UIImage(named: "snowy")
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
}
