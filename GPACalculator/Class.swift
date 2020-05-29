//
//  Class.swift
//  Saleem_Shayan_Final
//
//  Created by Khurram Ghullamani on 3/17/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//
import UIKit

class Class: Equatable {
    var creditHours: Double?
    var grade: String?
    var name: String?
    private var id: Int
    static var num: Int = 0
    
    init() {
        id = Class.num
        Class.num += 1
    }
    
    func isValid() -> Bool {
        return creditHours != nil && grade != nil
    }
    
    static func ==(lhs: Class, rhs: Class) -> Bool {
        return lhs.id == rhs.id
    }
}
