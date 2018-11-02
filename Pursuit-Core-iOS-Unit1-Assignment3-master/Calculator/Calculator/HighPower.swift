//
//  Operator.swift
//  Calculator
//
//  Created by Jason on 10/29/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func  myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
    var emptyArray = [Int]()
    for numbers in inputArray{
        if filter(numbers){
        emptyArray.append(numbers)
        }
        else{
            
        }
    }
    return emptyArray

}

let myClosureForLessThen = { (input: (Int)) -> Bool in
    var checkerTrue = Bool ()
    if let finallyAnInt = Int(userInputAsChar[4]){
        if input < (finallyAnInt){
            checkerTrue = true
        }
        else{
            checkerTrue = false
        }
    }
    return checkerTrue
    }
let myClosureForGreaterThen = { (input: (Int)) -> Bool in
    var checkerTrue = Bool ()
    if let finallyAnInt = Int(userInputAsChar[4]){
        if input > (finallyAnInt){
            checkerTrue = true
        }
        else{
            checkerTrue = false
        }
    }
    return checkerTrue
}

