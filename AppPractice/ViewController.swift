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
        let alert = UIAlertController(title: "Warning", message: "OwO", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
            style: .default,
            handler: { action -> Void in self.label.text = "OK" })
        let cancelAction = UIAlertAction(title: "Cancel",
            style: .cancel,
            handler: { action -> Void in self.label.text = "Cancel" })
        let destroyAction = UIAlertAction(title: "Destroy",
            style: .destructive,
            handler: { action -> Void in self.label.text = "Destroy" })
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}
