import UIKit

class ViewController: UIViewController
{
    @IBOutlet var labelCode: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        labelCode.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        labelCode.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap()
    {
        print("Tap on second label detected")
    }
    
    @IBAction func tapped(_ sender: UITapGestureRecognizer)
    {
        print("Tap detected")
    }
}
