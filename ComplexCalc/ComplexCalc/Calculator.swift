//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
//add functions
    func add (lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add (_ args: [Int]) -> Int {
        var sum = 0
        var i = 0
        while i <= (args.count - 1) {
            sum += (Int(args[i]))
            i += 1
        }
        return sum
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int) )-> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
//subtract functions
    func subtract (lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int) )-> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
//multiply functions
    func multiply (lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply (_ args: [Int]) -> Int {
        var sum = args[0]
        var i = 1
        while i <= (args.count - 1) {
            sum = sum * (Int(args[i]))
            i += 1
        }
        return sum
    }
//divide function
    func divide (lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
//Count function
    func count (_ args: [Int]) -> Int {
        return args.count 
    }
//Average function
    func avg (_ args: [Int]) -> Int {
        var sum = 0
        var i = 0
        while i <= (args.count - 1) {
            sum += (Int(args[i]))
            i += 1
        }
        return sum / args.count
    }
}
