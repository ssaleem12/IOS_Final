//
//  Grading Scale.swift
//  Saleem_Shayan_Final
//
//  Created by Khurram Ghullamani on 3/17/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//
import Foundation

class GradingScale {
    typealias Scale = [String: Double]
    static var Default: Scale = ["A": 4.0, "A-": 3.7, "B+": 3.4, "B": 3.0, "B-": 2.7, "C+": 2.4, "C": 2.0, "C-": 1.7, "D+": 1.4, "D": 1.0, "D-": 0.7, "E": 0.0]
    
    private var scales: [String: Scale] = ["default": Default]
    private var currentDefault: Scale = Default
    
    func add(name: String, scale: Scale) {
        scales[name] = scale
    }
    
    func get(name: String) -> Scale {
        return scales[name]!
    }
    
    func setDefault(name: String) {
        currentDefault = scales[name]!
    }
    
    func getDefault() -> Scale {
        return currentDefault
    }
}
