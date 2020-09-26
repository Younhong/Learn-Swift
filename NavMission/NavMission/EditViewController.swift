//
//  EditViewController.swift
//  Navigation
//
//  Created by Younhong Ko on 2020/09/25.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool)
    func didImageZoomDone(_ controller: EditViewController, isZoom: Bool)
}

class EditViewController: UIViewController {
    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate: EditDelegate?
    var isOn = true
    var lblOn = "켜기"
    var lblOff = "끄기"
    var isZoom = false
        
    @IBOutlet var lblOnOff: UILabel!
    @IBOutlet var txMessage: UITextField!
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var swIsOn: UISwitch!
    @IBOutlet var btnZoom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        txMessage.text = textMessage
        swIsOn.isOn = isOn
        lblOnOff.text = lblOff
        
        if isZoom {
            btnZoom.setTitle("확대", for: .normal)
        } else {
            btnZoom.setTitle("축소", for: .normal)
        }
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: txMessage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn)
            delegate?.didImageZoomDone(self, isZoom: isZoom)
        }
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            isOn = true
            lblOnOff.text = lblOff
        } else {
            isOn = false
            lblOnOff.text = lblOn
        }
    }
    
    @IBAction func imageZoom(_ sender: UIButton) {
        if isZoom {
            isZoom = false
            btnZoom.setTitle("축소", for: .normal)
        } else {
            isZoom = true
            btnZoom.setTitle("확대", for: .normal)
        }
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
