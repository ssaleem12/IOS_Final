//
//  Student.swift
//  Saleem_Shayan_Final
//
//  Created by Khurram Ghullamani on 3/17/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//
import UIKit

class Student {
    var classes: [Class]
    var initialCreditHours: Double = 0.0
    var initialPoints: Double = 0.0
    var initialGPA: Double = 0.0
    var gradingScale: GradingScale
    
    init() {
        gradingScale = GradingScale()
        classes = [ Class() ]
    }
    
    func projectGPA() -> Double {
        var totalHours = initialCreditHours
        var totalPoints = initialPoints
        for c in classes {
            if c.isValid() {
                totalHours += c.creditHours ?? 0
                totalPoints += gradingScale.getDefault()[(c.grade!)]! * (c.creditHours!)
            }
        }
        return totalPoints / totalHours
    }
    
    func changeGradingScale(name: String) {
        gradingScale.setDefault(name: name)
    }
}
