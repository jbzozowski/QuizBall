//
//  ViewController.swift
//  QuizBall
//
//  Created by Julius Bzozowski on 1/16/2018.
//  Copyright (c) 2018 Julius Bzozowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    
    //this gets called when the UIViewController is loaded into memory when the app starts
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
        
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        nextQuestion()
    }
    
    func updateScore() {
        scoreLabel.text = "Score: \(score)"
    }
    
    
    func updateUI() {
        progressLabel.text = "\(questionNumber + 1) / 15"
        progressBar.frame.size.width = (view.frame.size.width / 15) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        
        if questionNumber <= 14 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
            
        updateUI()
        updateScore()
            
        } else if score == 15 {
            updateScore()
            let alert = UIAlertController(title: "Perfect Score!", message: "You are a Trivia Champion?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
                })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
         else {
            updateScore()
            let alert = UIAlertController(title: "Pretty Good", message: "Would you like to try again?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }

    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Safe!")
            score += 1
        }
        else {
            ProgressHUD.showSuccess("Out!")
        }
        
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseOut)
        view.layer.add(transition, forKey: nil)
    }
    

}
