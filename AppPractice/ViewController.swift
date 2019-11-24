import UIKit

class ViewController: UIViewController
{
    @IBOutlet var button: UIButton!
    
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        if textView.isEditable == true { textView.isEditable = false }
        else { textView.isEditable = true }
    }
}
