import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        performSegue(withIdentifier: "firstLink", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nextVC = segue.destination as! SecondViewController
        nextVC.navigationItem.title = "Second View Title"
        nextVC.receivedString = "Passed text"
    }
}
