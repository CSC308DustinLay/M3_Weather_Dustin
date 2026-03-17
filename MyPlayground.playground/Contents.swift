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
