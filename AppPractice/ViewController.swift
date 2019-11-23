import UIKit

class ViewController: UIViewController
{
    @IBOutlet var label: UILabel!
    @IBOutlet var stepper: UIStepper!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper)
    {
        label.text = "\(stepper.value)"
    }
    
    @IBAction func changeStepper(_ sender: UIButton)
    {
    }
}
