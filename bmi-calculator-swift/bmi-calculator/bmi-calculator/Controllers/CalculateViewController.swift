//
//  ViewController.swift
//  bmi-calculator
//
//  Created by Dulio Denis on 1/11/21.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightValueChange(_ sender: UISlider) {
        heightLabel.text = "\(String(round(sender.value*100)/100))m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text = "\(String(Int(round(sender.value))))Kgs"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmi
        }
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        // BMI = weight / height * height
        bmi = weightSlider.value / pow(heightSlider.value, 2)
        print (bmi)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
}

