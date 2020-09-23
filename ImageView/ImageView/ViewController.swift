//
//  ViewController.swift
//  ImageView
//
//  Created by Younhong Ko on 2020/09/23.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var ImgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        ImgView.image = imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom) {
            newWidth = ImgView.frame.width / scale
            newHeight = ImgView.frame.height / scale
            btnResize.setTitle("확대", for: .normal)
        } else {
            newWidth = ImgView.frame.width * scale
            newHeight = ImgView.frame.height * scale
            btnResize.setTitle("축소", for: .normal)
        }
        ImgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            ImgView.image = imgOn
        } else {
            ImgView.image = imgOff
        }
    }
}

