//
//  QuestionBank.swift
//  QuizBall
//
//  Created by Julius Bzozowski on 1/16/18.
//  Copyright © 2018 Julius Bzozowski. All rights reserved.
//

import Foundation


class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        list.append(Question(text: "Lou Gehrig is the only Yankee to hit four home runs in one game.", correctAnswer: true))
        
            list.append(Question(text: "Mickey Mantle played more games for the Yankees than any other player.", correctAnswer: true))
        
        list.append(Question(text: "The Yankees hold spring training in Clearwater, Florida.", correctAnswer: false))
        
        list.append(Question(text: "Babe Ruth holds the Yankees record for the most career World Series home runs.", correctAnswer: false))
        
        list.append(Question(text: "Mariano Rivera was the first Yankee pitcher to win World Series MVP.", correctAnswer: false))
        
        list.append(Question(text: "The original name of the Yankees was the New York Highlanders.", correctAnswer: true))
        
        list.append(Question(text: "Derek Jeter was drafted by the Yankees in 1992.", correctAnswer: true))
        
        list.append(Question(text: "The Yankee franchise originated in Baltimore, Maryland.", correctAnswer: true))
        
        list.append(Question(text: "Aaron Boone hit the game winning home run in Game 7 of the 2003 ALCS.", correctAnswer: true))
        
        list.append(Question(text: "The Cleveland Indians swept the Yankees in the 2012 ALCS.", correctAnswer: false))
        
        list.append(Question(text: "The Yankees Hideki Matsui was named MVP of the 2009 World Series.", correctAnswer: true))
        
        list.append(Question(text: "The Yankees won the AL Pennant in 2008.", correctAnswer: false))
        
        list.append(Question(text: "The Yankees Whitey Ford threw a perfect game in the 1956 World Series.", correctAnswer: false))
        
        list.append(Question(text: "Marv Throneberry was the first man to play for both the Yankees and the Mets.", correctAnswer: true))
        
        list.append(Question(text: "Wally Pip was the first Yankee to lead the league in home runs.", correctAnswer: true))

    }
}
