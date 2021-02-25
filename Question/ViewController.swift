//
//  ViewController.swift
//  Question
//
//  Created by fred fu on 2021/2/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var resetGameButton: UIButton!
    
    var questions = [Questions]()
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerButton.setTitle("顯示答案", for: .normal)
        nextButton.setTitle("下一題", for: .normal)
        resetGameButton.setTitle("重新答題", for: .normal)
        
        let question1 = Questions(description: "最好吃的食物", ansswer: "生魚片")
        let question2 = Questions(description: "最美麗的景色", ansswer: "雪景")
        let question3 = Questions(description: "最開心的事情", ansswer: "賺大錢")
        
        questions.append(question1)
        questions.append(question2)
        questions.append(question3)
        
        questionLabel.text = questions[index].description
        answerLabel.text = ""
        
    }
    @IBAction func answerButton(_ sender: Any) {
        
        if index < questions.count {
            
            answerLabel.text = questions[index].ansswer
            
        }

    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        
        if index < questions.count - 1 {
            index += 1
            questionLabel.text = questions[index].description
            answerLabel.text = ""

        }

    }
    @IBAction func resetGameButton(_ sender: Any) {
        index = 0
        questionLabel.text = questions[index].description
        answerLabel.text = ""
    }
    
}
