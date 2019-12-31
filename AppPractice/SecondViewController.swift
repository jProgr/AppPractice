import UIKit

class SecondViewController: UIViewController
{
    @IBOutlet var label: UILabel!
    var receivedString = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()

        label.text = receivedString
    }
}
