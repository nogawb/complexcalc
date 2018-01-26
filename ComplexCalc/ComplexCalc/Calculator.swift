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
    
   func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var finalVal = [String: Int]()
            for (stringL, numL) in lhs {
                for (stringR, numR) in rhs {
                    if (stringR == stringL) {
                        finalVal[stringR] = numL + numR
                    }
                }
            }
        return finalVal
    }
    
//subtract functions
    func subtract (lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int) )-> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var finalVal = [String: Int]()
        for (stringL, numL) in lhs {
            for (stringR, numR) in rhs {
                if (stringR == stringL) {
                    finalVal[stringR] = numL - numR
                }
            }
        }
        return finalVal
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
//MathOp
    //assert(calc.mathOp(lhs: 5, rhs: 5, op: { ($0 + $1) + ($0 * $1) }) == 35)
    func mathOp(lhs : Int, rhs : Int, op : (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    //assert(calc.mathOp(args: [1, 2, 3], beg: 0, op: { $0 + $1 }) == 6)
    //    // this is (((0 op 1) op 2) op 3)
    //assert(calc.mathOp(args: [1, 2, 3, 4, 5], beg: 0, op: { $0 + $1 }) == 15)
    //    // this is (((((0 op 1) op 2) op 3) op 4) op 5)
    //assert(calc.mathOp(args: [1, 1, 1, 1, 1], beg: 1, op: { $0 * $1 }) == 1)
    //    // this is (((((1 op 1) op 1) op 1) op 1) op 1)
    
    func mathOp(args: [Int], beg: Int, op : (Int, Int) -> Int) -> Int {
        var finalVal = 0
        var i = 1
        finalVal = op(beg, args[0])
        while i <= (args.count - 1) {
            finalVal = op(finalVal, args[i])
            i += 1
        }
        return finalVal
    }
}
