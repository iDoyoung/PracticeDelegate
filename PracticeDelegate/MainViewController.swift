//
//  ViewController.swift
//  PracticeDelegate
//
//  Created by ido on 2020/08/12.
//  Copyright © 2020 ido. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pressSetButton(_ sender: UIButton) {
        let setVC = storyboard?.instantiateViewController(withIdentifier: "SetViewController") as! SetViewController
        let navController = UINavigationController(rootViewController: setVC)
        setVC.delegate = self
        present(navController, animated: true, completion: nil)
    }
    
}

extension MainViewController: PracticeDelegate {
    func setTitle(color: UIColor, title: String) {
        titleLabel.textColor = color
        titleLabel.text = title
    }
}
