//
//  Numerals.swift
//  Numerals
//
//  Created by Kyle Milner on 23/05/2015.
//  Copyright (c) 2015 Kyle Milner. All rights reserved.
//

import Foundation

public class Numerals {
    
    private static let encodings = [
        (1000, "M"), (900, "CM"),
        (500, "D"), (400, "CD"),
        (100, "C"), (90, "XC"),
        (50, "L"), (40, "XL"),
        (10, "X"), (9, "IX"),
        (5, "V"), (4, "IV"),
        (1, "I")
    ]

    public static func convert(var arabicToConvert: Int) -> String {
        var numeralChain = "";
        
        for (arabic, roman) in encodings {
            while arabicToConvert >= arabic {
                numeralChain += roman
                arabicToConvert -= arabic
            }
        }
        
        return numeralChain
    }
    
    
}