//
//  SetViewController.swift
//  PracticeDelegate
//
//  Created by ido on 2020/08/12.
//  Copyright © 2020 ido. All rights reserved.
//

import UIKit
protocol PracticeDelegate {
    func setTitle(color: UIColor, title: String)
}

class SetViewController: UIViewController {

    var delegate: PracticeDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func pressOrange(_ sender: UIButton) {
        delegate.setTitle(color: .orange, title: "Swift")
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func pressGreen(_ sender: UIButton) {
        delegate.setTitle(color: .green, title: "iOS")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pressBlue(_ sender: UIButton) {
        delegate.setTitle(color: .systemTeal, title: "Hello")
        dismiss(animated: true, completion: nil)
    }
    
}
