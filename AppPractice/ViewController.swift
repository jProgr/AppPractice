import UIKit

class ViewController: UIViewController
{
    @IBOutlet var textField: UITextField!
    @IBOutlet var otherTextField: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil)

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        textField.placeholder = "Email address here"
        textField.textColor = UIColor.red
        textField.font = UIFont(name: "Courier", size: 16)
        textField.clearButtonMode = .whileEditing
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }

    @objc func keyboardWillShow(notification: NSNotification)
    {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
        {
            if self.view.frame.origin.y == 0 { self.view.frame.origin.y = -keyboardSize.height }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification)
    {
        if ((notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue) != nil
        {
            if self.view.frame.origin.y != 0 { self.view.frame.origin.y = 0 }
        }
    }
    
    @IBAction func displayPassword(_ sender: UIButton)
    {
        textField.text = otherTextField.text?.uppercased()
    }
}
