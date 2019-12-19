import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    let mainArray = ["Shuttle bus", "Hierarchy", "Exchange", "Padlock"]
    let detailArray = ["6am 10pm", "Acme corporation", "Ideas worth sharing", "Access denied"]
    let imageArray = ["1.png", "2.png", "3.png", "4.png"]

    @IBOutlet var tableData: UITableView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableData.dataSource = self
        tableData.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return mainArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        cell.mainText?.text = self.mainArray[indexPath.row]
        cell.detailText?.text = self.detailArray[indexPath.row]
        cell.cellImage?.image = UIImage(named: self.imageArray[indexPath.row])

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let selectedItem = mainArray[indexPath.row]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
}
