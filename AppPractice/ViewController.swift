import UIKit

class ViewController: UIViewController
{
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        label.numberOfLines = 0
    }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        print("Button tapped")
        let alert = UIAlertController(title: "Log In",
            message: "Enter Password",
            preferredStyle: .alert)
        alert.addTextField(configurationHandler: {(textField) -> Void in
            textField.placeholder = "Password here"
            textField.isSecureTextEntry = true
        })
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            let savedText = alert.textFields![0] as UITextField
            self.label.text = savedText.text
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}
