//
//  ViewController.swift
//  Sliding full Screen Images
//
//  Created by Srans022019 on 17/04/20.
//  Copyright © 2020 Srans02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageController: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
}

extension ViewController: UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        //page index calculate
        let pageIndex = Int(scrollView.contentOffset.x/375)
        
        //setting current page to page controller
        pageController.currentPage = pageIndex
    }
    
}

