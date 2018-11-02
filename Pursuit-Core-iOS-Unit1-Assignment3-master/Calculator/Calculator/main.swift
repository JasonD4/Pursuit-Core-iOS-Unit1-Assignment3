//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.



import Foundation

//let NumberAsInt = {(word: String?) -> Int in
//var word = readLine() ?? "0"
//  var wordAsInt = Int(word ?? "0")
//    if let number = wordAsInt{
//        return number
//    }
//    }
print(" what would you like to do today (1) for normal math, (2) for math game, (3) for highorder Uses")
let function = ["*","+","-","/"]
var operation = ""
var userInputs: String?
var userInput = userInputs ?? ""
var userInputAsChar = userInput.components(separatedBy: " ")
var x = Double()
var y = Double()
var arrayOfInt = [Int]()
let function2 = ["*","+","-","/"]
var hidden = "?"
var functionRandom = function2.randomElement() ?? "+"
var tracker = 0
while tracker == 0{
    userInputs = readLine()
    switch userInputs{
    case "1":
        tracker = 1
    case "2":
        tracker = 2
    case "3":
        tracker = 3
    default:
    print("Please enter a number that is 1 , 2 , or 3")
    }
}
while tracker == 1{
    
outerloop: while userInputAsChar.count != 3 {
    print("please enter number, your operation and number again Ex 5 + 5")
     userInputs = readLine()
     userInput = userInputs ?? ""
     userInputAsChar = userInput.components(separatedBy: " ")
    sleep(1)
}
innerloop: while true {
    if let number1 = Double(userInputAsChar[0]){
        x = number1
    }
    else{
    print("invalid")
       continue
    }

print(x)
    for inputCheck in userInputAsChar{
        if function.contains(inputCheck){
            operation = inputCheck
        }
    }
    print(operation)
    if let number2 = Double(userInputAsChar[2]){
        if y == 0 && operation == "/"{
            print("invalid response y will now be converted to x")
            y = x
        }
     else {
        y = number2
            }
    }
print(y)


func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
  switch opString {
  case "+":
    return {x, y in x + y }
  case "-":
    return {x, y in x - y }
  case "*":
    return {x, y in x * y }
  case "/":
    return  {x, y in x / y}
  default:
    return {x, y in x + y }
  }
}

let mathOperation = mathStuffFactory(opString: operation)
    var result = mathOperation(x,y)
print(result)
    sleep(1)
    print("would you like to calculate again")
    let answer = readLine()
    switch answer{
    case "yes":
        arrayOfInt.removeAll()
        result = 0
        print("ok please input a new equation")
        userInputs = readLine()
        userInput = userInputs ?? ""
        userInputAsChar = userInput.components(separatedBy: " ")
        continue
    case "no":
        print("ok have a nice day ^.^")
        break
    default:
        print("please give a valid answer yes or no")
    }
}
}
while tracker == 2{
    userInputAsChar.removeAll()
    print("please enter a (number ? number) and guess the operator")
    outerloop: while userInputAsChar.count != 3 {
    userInputs = readLine()
    userInput = userInputs ?? ""
    userInputAsChar = userInput.components(separatedBy: " ")
    
    if let number1 = Double(userInputAsChar[0]){
        x = number1
    }
    else{
        print("invalid")
        print("please give me a valid answer")
        continue
    }
    if let number2 = Double(userInputAsChar[2]){
        y = number2
    }
    else {
        print("invalid")
        print("please give me a valid answer")
        continue
    }
  let mathOpRandom = mathStuffFactoryRandom(opStringRandom: functionRandom)
    let result = mathOpRandom(x,y)
    print(result)
    sleep(1)
    print("can you guess the operator")
    let userInputAsAnswer = readLine()
    if functionRandom == userInputAsAnswer{
        print("Good job you are correct")
}
    else{
        print("sorry that is incorrect the correct answer is \(functionRandom)")

    }
    
}
    print("would you like to play again")
    let answer = readLine()
    switch answer{
    case "yes":
        arrayOfInt.removeAll()
        functionRandom = function2.randomElement() ?? "+"
        print("ok please input a new equation")
        continue
    case "no":
        print("ok have a nice day ^.^")
        break
    default:
        print("please give a valid answer yes or no")
    }
}
// this is for high function
print("ok High function please input a number")
highFuncLoop: while true && tracker == 3{

    outerloop: while userInputAsChar.count != 5 {
        print("ok please input a comman ex filter 1,2,3  by > 3")
        userInputAsChar.removeAll()
    userInputs = readLine()
    userInput = userInputs ?? ""
    userInputAsChar = userInput.components(separatedBy: " ")
    }
    for numbers in userInputAsChar[1]{
        if let finallyAnInt = Int(numbers.description){
            arrayOfInt.append(finallyAnInt)
        }
        }
//    else{
////        continue
//            print("not a valid number input")
//    }
    
            print(arrayOfInt)
    print(userInputAsChar)
    if userInputAsChar[0] == "filter"{
        if userInputAsChar[3] == "<"{
       print(myFilter(inputArray: arrayOfInt, filter: myClosureForLessThen))
    }
        else if userInputAsChar[3] == ">"{
            print(myFilter(inputArray: arrayOfInt, filter: myClosureForGreaterThen))

        }
    }
    else if userInputAsChar[0] == "reduce"{
        if userInputAsChar[3] == "+"{
        myReduce(myArray: arrayOfInt, filter: reduceAddition)
        }
        else if userInputAsChar[3] == "*"{
            myReduceMultiplyer(myArray: arrayOfInt, filter: reduceMultiplyer)
        }
        
    }
        else if userInputAsChar[0] == "map"{
            if userInputAsChar[3] == "/" && userInputAsChar[4] != "0"{
            myMap(myArray: arrayOfInt, filter: myMapClosuredividing)
        }
                if userInputAsChar[3] == "*"{
                    myMap(myArray: arrayOfInt, filter: myMapClosureMultiplyer)
        }
    else if userInputAsChar[4] == "0"{
        print("not a valid reasoing please check spelling or also dont have a divider by 0")
    }
        }
    arrayOfInt.removeAll()
    userInputAsChar.removeAll()
    print("would you like to go again")
    
    let answered = readLine() ?? ""
    switch answered{
    case "yes":
        print("ok")
        case "no":
        print("ok have a nice day ^.^")
        break
    default:
        print("please give a valid answer yes or no")    }
}
//    var numberWanted = Int()
//    let answer = readLine()
//    if let answerAlmostInt = answer{
//        if let answerIsAnInt = Int(answerAlmostInt){
//            numberWanted = answerIsAnInt
//        }
//}
