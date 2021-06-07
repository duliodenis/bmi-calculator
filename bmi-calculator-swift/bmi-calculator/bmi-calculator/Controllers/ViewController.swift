//
//  ViewController.swift
//  bmi-calculator
//
//  Created by Dulio Denis on 1/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightValueChange(_ sender: UISlider) {
        print(round(sender.value*100)/100)
        heightLabel.text = "\(String(round(sender.value*100)/100))m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        print(Int(round(sender.value)))
        weightLabel.text = "\(String(Int(round(sender.value))))Kgs"
    }
    
}

