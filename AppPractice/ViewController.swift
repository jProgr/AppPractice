import UIKit

class ViewController: UIViewController
{
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        label.frame.size.width = 120
    }
    
    @IBAction func buttonTapped(_ sender: Any)
    {
        switch (sender as AnyObject).tag
        {
            case 1: label.text = "Button 1"
            case 2: label.text = "Button 2"
            default: label.text = "Default"
        }
    }
}
