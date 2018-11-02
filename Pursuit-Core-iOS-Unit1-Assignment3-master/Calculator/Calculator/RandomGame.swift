//
//  RandomGame.swift
//  Calculator
//
//  Created by Jason on 10/31/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation


func mathStuffFactoryRandom(opStringRandom: String) -> (Double, Double) -> Double {
    switch opStringRandom {
    case "+":
        return {x, y in x + y }
    case "-":
        return {x, y in x - y }
    case "*":
        return {x, y in x * y }
    case "/":
        if y == 0 {
            return  {x, y in 0 / 9
            }
        }
        else{
            return {x, y in x / y
            }
        }
    default:
        return {x, y in x + y }
    }
}
