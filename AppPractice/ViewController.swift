import UIKit

class ViewController: UIViewController
{
    @IBOutlet var topImageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func pinchDetected(_ sender: UIPinchGestureRecognizer)
    {
        topImageView.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
}
