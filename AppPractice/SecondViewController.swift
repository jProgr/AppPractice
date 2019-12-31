import UIKit

class SecondViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        performSegue(withIdentifier: "secondLink", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nextVC = segue.destination as! ThirdViewController
        nextVC.navigationItem.title = "Third View Controller"
    }
}
