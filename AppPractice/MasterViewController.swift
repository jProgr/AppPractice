import UIKit

class MasterViewController: UITableViewController
{
    let monsters =
    [
        Monster(name: "Cat-Bot", description: "MEE-OW", iconName: "meetcatbot", weapon: .sword),
        Monster(name: "Dog-Bot", description: "BOW-WOW", iconName: "meetdogbot", weapon: .blowgun),
        Monster(name: "Explode-Bot", description: "BOOM!", iconName: "meetexplodebot", weapon: .smoke),
        Monster(name: "Fire-Bot", description: "Will Make You Steamed", iconName: "meetfirebot", weapon: .ninjaStar),
        Monster(name: "Ice-Bot", description: "Has A Chilling Effect", iconName: "meeticebot", weapon: .fire),
        Monster(name: "Mini-Tomato-Bot", description: "Extremely Handsome", iconName: "meetminitomatobot", weapon: .ninjaStar)
    ]

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return monsters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let monster = monsters[indexPath.row]
        cell.textLabel?.text = monster.name

        return cell
    }
}
