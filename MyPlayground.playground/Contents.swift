import UIKit

var greeting = "Hello, playground"

func name(a: Int, b: Int) -> Int
{
    return a+b
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func name(a: Int, b: Int) -> Int
        {
            return a+b
        }
    }
}

func generateRandomNum() -> Int
{
    return Int.random(in: 1...100)
}

generateRandomNum()

func currencySymbol(for countryCode: String) -> String?
{
    switch countryCode
    {
    case "US":
        return "$"
    case "DE":
        return "€"
    case "KR":
        return "₩"
    case "JP":
        return "¥"
    default:
        return nil
    }
}

if let cs = currencySymbol(for: "US"){
    print(cs)
}
else{
    print("Not found")
}

func stringConverter(matching string: String?, matching type: Int) -> Double
{
    switch type
    {
    case 1:
        return Double(string!)!
    case 2:
        if let string, let newNum = Double(string){
            return newNum
        }
        else{
            print("Error")
        }
    case 3:
        return Double(string ?? "0") ?? 0.0
    default:
        return 0.0
    }
    return 0.0
}

