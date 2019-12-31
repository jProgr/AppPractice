import UIKit

class SecondViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func doneTapped(_ sender: Any)
    {
        let alert = UIAlertController(title: "Message", message: "Done button tapped", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in })
        alert.addAction(okAction)

        self.present(alert, animated: true, completion: nil)
    }
}
