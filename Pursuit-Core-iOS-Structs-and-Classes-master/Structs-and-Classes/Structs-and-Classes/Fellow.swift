//
//  Fellow.swift
//  Structs-and-Classes
//
//  Created by Alex Paul on 10/29/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

struct Fellow {
  // properties
  var stressLevel: StressLevel
  var cohort: Cohort
  var gender: Gender
  var firstName: String
  var lastName: String
  var car: Car?
  var email: String
  var isLegalToDrink: Bool
  
    // Computed property
    // fullName is a read only property
    // fullName is a getter
    // it implies a get{} is there
var fullName: String{
        return firstName + " " + lastName
    }
    // property observers
    var isEmployes: Bool{
        // if this is true do this
        willSet{ // called when value is about ot get set
            // will be updated
            print("congrats on the job, all the hard work paid off")
            sleep(2)// causes a delay 
        } didSet{ // after value has been set
            //was updated
            print("Gong Rings !!!!!")
        }
    }
    
 static var currentYear: Date{
        return Date()
    }
        
  // default memberwise intializer provided
  // do not need to implement initializer
  
  // methods
  
  // instance method
  func getFellowInfo() {
    print("Fellow\'s name is \(firstName) and belongs to the \(cohort) cohort, current stress level is \(stressLevel)")
  }
    
   mutating func updateLastName (){
        lastName = "pursuit"
    }
}
