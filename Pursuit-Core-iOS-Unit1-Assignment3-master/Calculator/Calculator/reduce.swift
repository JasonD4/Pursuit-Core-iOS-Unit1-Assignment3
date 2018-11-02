//
//  reduce.swift
//  Calculator
//
//  Created by Jason on 10/31/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation
func myReduce(myArray: [Int], filter: (Int) -> Int) -> (){
    var sum = 0
    if let finallyAnInt = Int(userInputAsChar[4]){
        sum = finallyAnInt
    }
    for numbers in myArray{
    sum += filter(numbers)
    }
    print(sum)
}


let reduceAddition = {(number: Int) -> Int in
    var sum = 0
    sum += number
    return sum
}
func myReduceMultiplyer(myArray: [Int], filter: (Int) -> Int) -> (){
    var product = 1
    if let finallyAnInt = Int(userInputAsChar[4]){
        product = finallyAnInt
    }
    for numbers in myArray{
        product += filter(numbers)
    }
    print(product)
}
let reduceMultiplyer = {(number: Int) -> Int in
    var product = 0
    if var sum = Int(userInputAsChar[4]){
    sum *= number
        product = sum
}
    return product
}
