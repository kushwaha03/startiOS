//
//  ViewController.swift
//  Vipul
//
//  Created by karmaa lab on 05/04/19.
//  Copyright © 2019 kLab. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialProgressView
class ViewController: UIViewController {
  let progressView = MDCProgressView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let color2 = UIColor(rgb: 0x2ecc71)
        self.view.backgroundColor = color2
//        let progressView = MDCProgressView()
//        progressView.progress = 0
//
//        let progressViewHeight = CGFloat(2)
//        progressView.frame = CGRect(x: 0, y: view.bounds.height - progressViewHeight, width: view.bounds.width, height: progressViewHeight)
//        view.addSubview(progressView)
    }

//    func startAndShowProgressView() {
//        progressView.progress = 0
//        progressView.setHidden(false, animated: true)
//    }
//
//    func completeAndHideProgressView() {
//        progressView.setProgress(1, animated: true) { (finished) in
//            self.progressView.setHidden(true, animated: true)
//        }
//    }
}

