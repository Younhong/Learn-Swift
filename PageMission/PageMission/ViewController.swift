//
//  ViewController.swift
//  PageMission
//
//  Created by Younhong Ko on 2020/09/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var lblPageCnt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = 10
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        lblPageCnt.text = String(pageControl.currentPage + 1)
    }
    
    @IBAction func pageChange(_ sender: UIPageControl) {
        lblPageCnt.text = String(pageControl.currentPage + 1)
    }
}

