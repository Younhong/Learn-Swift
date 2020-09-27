//
//  DetailViewController.swift
//  Table
//
//  Created by Younhong Ko on 2020/09/27.
//

import UIKit

class DetailViewController: UIViewController {
    var receiveItem = ""
    var receiveImage = ""
    
    @IBOutlet var lblItem: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblItem.text = receiveItem
        imageView.image = UIImage(named: receiveImage)
    }
    
    func receiveItem(_ item: String) {
        receiveItem = item
    }
    
    func receiveImage(_ item: String) {
        receiveImage = item
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
