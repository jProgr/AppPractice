import UIKit

class TableViewCell: UITableViewCell
{
    @IBOutlet var mainText: UILabel!
    @IBOutlet var detailText: UILabel!
    @IBOutlet var cellImage: UIImageView!
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
