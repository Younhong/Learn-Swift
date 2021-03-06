//
//  ViewController.swift
//  Navigation
//
//  Created by Younhong Ko on 2020/09/25.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    var isOn = true
    var isZoom = true
    
    @IBOutlet var txMessage: UITextField!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = imgOn
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segue : use bar button"
        }
        
        editViewController.textMessage = txMessage.text!
        editViewController.isOn = isOn
        editViewController.isZoom = isZoom
        editViewController.delegate = self
    }
    
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn {
            imgView.image = imgOn
            self.isOn = true
        } else {
            imgView.image = imgOff
            self.isOn = false
        }
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }
    
    func didImageZoomDone(_ controller: EditViewController, isZoom: Bool) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        if isZoom {
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            self.isZoom = true
        } else {
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            self.isZoom = false
        }
        
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
    }


}

