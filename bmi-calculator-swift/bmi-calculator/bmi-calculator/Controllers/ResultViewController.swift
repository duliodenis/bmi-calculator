//
//  ResultViewController.swift
//  bmi-calculator
//
//  Created by Dulio Denis on 6/9/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%.1f", bmiValue)
    }
    
    @IBAction func recalculate(_ sender: Any) {
        dismiss(animated: true)
    }
}
