//
//  SecondViewController.swift
//  bmi-calculator
//
//  Created by Dulio Denis on 6/9/21.
//

import UIKit

class SecondViewController: UIViewController {
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        var label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 10, y: 100, width: 100, height: 50)
        view.addSubview(label)
    }
}
