//
//  ViewController.swift
//  AlarmAlert
//
//  Created by Younhong Ko on 2020/09/24.
//

import UIKit

class ViewController: UIViewController {
    var alarmTime: String?
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var alertFlag = false
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)

        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
        alertFlag = true
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)

        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        if (alarmTime == currentTime) {
            if alertFlag == true {
                let alarmAlert = UIAlertController(title: "알림", message: "설정된 시간입니다", preferredStyle: UIAlertController.Style.alert)
                let onAction = UIAlertAction(title: "네 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
                alarmAlert.addAction(onAction)
                present(alarmAlert, animated: true, completion: nil)
                alertFlag = false
            }
        }
    }
    
}

