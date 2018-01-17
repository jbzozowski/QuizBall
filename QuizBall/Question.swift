//
//  Question.swift
//  Quizzler
//
//  Created by Julius Bzozowski on 1/14/18.
//  Copyright © 2018 Julius Bzozowski. All rights reserved.
//

import Foundation

class Question {
    
  //Question properties
    let questionText : String
    let answer : Bool
    
  //determines initial values of both above properties
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
    //Method is a function within a class
}



//Function is a function outside a class
