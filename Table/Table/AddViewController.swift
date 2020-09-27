//
//  AddViewController.swift
//  Table
//
//  Created by Younhong Ko on 2020/09/27.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let size = 3
    let PICKED_VIEW_COLUMN = 1
    var imageFileName = [
        "cart.png", "clock.png", "pencil.png"
    ]
    var imageArray = [UIImage?]()
    
    var selectedImageName = "cart.png"
    
    @IBOutlet var tfAddItem: UITextField!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var pickerImage: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< size {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        imageView.image = UIImage(named: selectedImageName)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
        itemsImageFile.append(selectedImageName)
        tfAddItem.text=""
        _ = navigationController?.popViewController(animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKED_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedImageName = imageFileName[row]
        imageView.image = imageArray[row]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
