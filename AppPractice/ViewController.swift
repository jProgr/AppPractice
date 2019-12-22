import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{
    @IBOutlet var collectionView: UICollectionView!
    var cellColor = true

    override func viewDidLoad()
    {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath)
        if cellColor { cell.backgroundColor = UIColor.yellow }
        else { cell.backgroundColor = UIColor.green }
        cellColor = !cellColor

        return cell
    }
}
