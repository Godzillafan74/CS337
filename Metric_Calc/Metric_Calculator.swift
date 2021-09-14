//
//  Metric_Calculator.swift
//  Metric_Calc
//
//  Created by Elias S. Csipkay on 9/13/21.
//

import Foundation

//Calculator Modes enumerator
enum CalculatorModes: String {
    case temperature = "Temperature"
    case length = "Length"
    case volume = "Volume"
    case mass = "Mass"
}
//Model
struct Metric_Calculator {
    var currentMode: CalculatorModes
    
    let temperatureConversionMultiplier = 9.0/5.0
    let temperatureConversionOffset = 32.0
    let lengthConversionMultiplier = 1.60934
    let volumeConversionFactor = 3.78541
    let massConversionFactor = 0.45359237
    
    //unit conversion method
    func computeMetricMeasurement (inputData: Double) -> Double {
        switch(currentMode) {
        case .temperature:
            return (inputData - temperatureConversionOffset) / temperatureConversionMultiplier
        case .length:
            return (inputData * lengthConversionMultiplier)
        case .volume:
            return (inputData * volumeConversionFactor)
        case .mass:
            return (inputData * massConversionFactor)
            
        }
    }
}
