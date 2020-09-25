//
//  ViewController.swift
//  TabMission
//
//  Created by Younhong Ko on 2020/09/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnMoveDatePickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    @IBAction func btnMovePickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 3
    }
    
}

