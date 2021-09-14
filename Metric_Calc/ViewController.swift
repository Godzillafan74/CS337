//
//  ViewController.swift
//  Metric_Calc
//
//  Created by Elias S. Csipkay on 9/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imperialData: UITextField!
    @IBOutlet weak var imperialLabel: UILabel!
    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var metricLabel: UILabel!
    
    @IBOutlet weak var modeSelection: UIBarButtonItem!
    
    let units = ["Temperature" : ["imperial": "°F", "metric": "°C"], "Length":["imperial": "miles", "metric": "km"], "Volume": ["imperial": "gallons", "metric": "liters"], "Mass": ["imperial": "lbs", "metric": "kgs"]
    ]
    
    //model variable
    var calculatorModel = Metric_Calculator (currentMode: CalculatorModes.temperature)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupModeMenu()
        selectMode(mode: .temperature)
    }


    @IBAction func convert(_ sender: Any) {
        if let enteredValue = Double (imperialData.text ?? "0.00") {
            imperialData.resignFirstResponder()
            let resultValue = calculatorModel.computeMetricMeasurement(inputData: enteredValue)
            result.text = String (format: "%.2f", resultValue)
        }
    }
    func setupModeMenu() {
        let temperatureAction = UIAction(title:"Temperature", image: UIImage(systemName: "thermometer.sun.fill")) { (action) in
            self.selectMode (mode: .temperature)
        }
        let lengthAction = UIAction(title: "Length", image: UIImage(systemName: "ruler.fill")) { (action) in self.selectMode (mode: .length)
        }
        let massAction = UIAction(title: "Mass", image: UIImage(systemName: "scalemass.fill")) { (action) in self.selectMode (mode: .mass)
        }
        let volumeAction = UIAction(title: "Volume", image: UIImage(systemName: "capsule.portrait.fill")) { (action) in self.selectMode (mode: .volume)
        }
        let menu = UIMenu (title: "Select Unit", children: [temperatureAction, lengthAction, massAction, volumeAction])
        modeSelection.menu = menu
        modeSelection.primaryAction = nil
    }
    func selectMode(mode: CalculatorModes) {
        calculatorModel.currentMode = mode
        self.title = calculatorModel.currentMode.rawValue + "Calculator"
        metricLabel.text = units[calculatorModel.currentMode.rawValue]!["metric"]!
        imperialLabel.text = units[calculatorModel.currentMode.rawValue]!["imperial"]!
        convert(modeSelection!)
    }
}

