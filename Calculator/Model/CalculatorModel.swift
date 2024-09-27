//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Alena Belova  on 2024-09-26.
//

import Foundation
import SwiftUI // for colors

enum Key: String {
    
    //numbers
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    
    //operations
    case add = "+"
    case substract = "-"
    case muliply = "*"
    case divide = "÷"
    case equal = "="
    case clear = "AC"
    case negative = "-/+"
    case percent = "%"
    case decimal = "."
    
    //button color
    var buttonColor: Color{
        switch self {
        case .add, .substract, .muliply, .divide, .equal:
            return Color.voperator
        case .clear, .negative, .percent:
            return Color.hoperator
        default:
            return Color.num
        }
    }
}

//for operation
enum Operation {
    case add, substract, multiply, divide, none
}
