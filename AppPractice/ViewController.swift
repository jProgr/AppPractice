import UIKit

class ViewController: UIViewController
{
    @IBOutlet var mainLabel: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func changeLabel(_ sender: UIButton)
    {
        mainLabel.text = "Text created by Swift \ncode using Xcode"
        mainLabel.numberOfLines = 2
        mainLabel.font = UIFont(name: "Courier", size: 14)
        mainLabel.backgroundColor = UIColor.yellow
        mainLabel.isEnabled = false
    }
}
