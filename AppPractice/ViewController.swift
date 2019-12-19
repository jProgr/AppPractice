import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet var tableData: UITableView!

    let mainArray = ["Shuttle bus", "Hierarchy", "Exchange", "Padlock"]
    let detailArray = ["6am 10pm", "Acme corporation", "Ideas worth sharing", "Access denied"]
    let imageArray = ["1.png", "2.png", "3.png", "4.png"]
    let cellID = "cellID"

    override func viewDidLoad()
    {
        super.viewDidLoad()

        tableData.delegate = self
        tableData.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return mainArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if (cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = mainArray[indexPath.row]
        cell?.detailTextLabel?.text = detailArray[indexPath.row]
        cell?.imageView?.image = UIImage(named: imageArray[indexPath.row])

        return cell!
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
