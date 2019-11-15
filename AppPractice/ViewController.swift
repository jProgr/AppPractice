import UIKit

class ViewController: UIViewController
{
    @IBOutlet var labelResult: UILabel!
    @IBOutlet var textMessage: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func changeButton(_ sender: UIButton)
    {
        labelResult.text = textMessage.text?.uppercased()
    }
}
