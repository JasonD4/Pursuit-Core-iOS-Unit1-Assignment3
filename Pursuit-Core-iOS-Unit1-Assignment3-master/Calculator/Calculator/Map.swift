//
//  Map.swift
//  Calculator
//
//  Created by Jason on 10/31/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation
func myMap(myArray: [Int], filter: (Int) -> Int) -> (){
  var currentArray = [Int]()
    for numbers in myArray{
        currentArray.append(filter(numbers))
    }
    print(currentArray)
}


let myMapClosuredividing = {(number: Int) -> Int in
    var quotion = 0
    if var finallyAnInt = Int(userInputAsChar[4]){
         quotion = number / finallyAnInt
    }
    return quotion
}
    let myMapClosureMultiplyer = {(number: Int) -> Int in
    var product = 0
    if var finallyAnInt = Int(userInputAsChar[4]){
       product = finallyAnInt * number
    }
    return product
}
