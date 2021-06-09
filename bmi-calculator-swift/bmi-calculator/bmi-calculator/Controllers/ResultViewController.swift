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
    @IBOutlet weak var background: UIImageView!
    
    var bmiValue: Float?
    var advise: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%.1f", bmiValue ?? 0.0)
        adviceLabel.text = advise ?? "Eat some salad"
        background.backgroundColor = color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @IBAction func recalculate(_ sender: Any) {
        dismiss(animated: true)
    }
}
