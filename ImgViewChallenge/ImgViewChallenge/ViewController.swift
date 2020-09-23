//
//  ViewController.swift
//  ImgViewChallenge
//
//  Created by Younhong Ko on 2020/09/23.
//

import UIKit

class ViewController: UIViewController {
    var imageName = ["1.png", "2.png", "3.png", "4.png", "5.png", "6.png"]
    var index = 0
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "1.png")
    }
    
    @IBAction func prevButton(_ sender: UIButton) {
        if (index != 0) {
            index = index - 1
            imgView.image = UIImage(named: String(index+1)+".png")
        }
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if (index != 5) {
            index = index + 1
            imgView.image = UIImage(named: String(index+1)+".png")
        }
    }
}

