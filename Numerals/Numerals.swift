//
//  Numerals.swift
//  Numerals
//
//  Created by Kyle Milner on 23/05/2015.
//  Copyright (c) 2015 Kyle Milner. All rights reserved.
//

import Foundation

public class Numerals {
    
    private static let I = "I" // 1
    private static let V = "V" // 5
    private static let X = "X" // 10
    private static let L = "L" // 50
    private static let C = "C" // 100
    private static let M = "M" // 1000
    
    
    public static func convert(arabic: Int) -> String? {
        if (arabic < 0) {
            return nil
        } else if (arabic == 0) {
            return ""
        }
        
        var result = ""
        let units = arabic / 1
        result += ones(units)
        return substitutions(result)
        
    }
    
    private static func ones(numberOfOnes: Int) -> String {
        var ones = ""
        for _ in 0..<numberOfOnes {
            ones += self.I
        }
        return ones
    }
    
    private static func substitutions(numeralToSubstitute: String) -> String {
        return numeralToSubstitute.stringByReplacingOccurrencesOfString("IIII", withString: self.I + self.V)
    }
    
    
}