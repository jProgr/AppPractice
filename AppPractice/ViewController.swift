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
        stepper.minimumValue = -10
        stepper.maximumValue = -5
        stepper.stepValue = 0.5
        stepper.isContinuous = true
        stepper.autorepeat = true
        stepper.wraps = true
    }
}
