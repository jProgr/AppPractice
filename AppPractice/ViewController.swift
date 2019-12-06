import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    @IBOutlet var picker: UIPickerView!
    var pickerData: [String] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        pickerData = ["cat", "dog", "hamster", "lizard", "parrot", "goldfish"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pickerData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pickerData[row]
    }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        let pickerIndex = picker.selectedRow(inComponent: 0)
        let alert = UIAlertController(title: "Your Choice", message: "\(pickerData[pickerIndex])", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}
