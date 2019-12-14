import UIKit

class ViewController: UIViewController, UITableViewDelegate
{
    @IBOutlet var petTable: UITableView!
    let source = SourceDelegate()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        petTable.dataSource = source
    }
}
