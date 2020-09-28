//
//  ViewController.swift
//  CameraPhotoLibrary
//
//  Created by Younhong Ko on 2020/09/28.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCaptureImageFromCamera(_ sender: UIButton) {
    }
    
    @IBAction func btnLoadImageFromLibrary(_ sender: UIButton) {
    }
    
    @IBAction func btnRecordVideoFromCamera(_ sender: UIButton) {
    }
    
    @IBAction func btnLoadVideoFromLibrary(_ sender: UIButton) {
    }
}

