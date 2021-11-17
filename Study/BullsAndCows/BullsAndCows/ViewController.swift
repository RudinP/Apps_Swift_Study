//
//  ViewController.swift
//  BullsAndCows
//
//  Created by 루딘 on 2021/11/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var answerWord: UITextField!
    @IBOutlet weak var bullCow: UILabel!
    @IBOutlet weak var button: UIButton!
    var guess:String = ""
    var answerCheck:String = ""
    @IBAction func AnswerChecker(_ sender: Any) {
        guess = answerWord.text!
        answerCheck = answer.text!
        if guess.count > answerCheck.count{
            bullCow.text = "Answer is shorter than your guess."
        }else{
            var count = Count()
            count = GameFunc(guess: guess, answer: answerCheck)
            if count.bulls == answer.text?.count{
                bullCow.text = "You Won!"
                self.button.setTitle("Replay", for: .normal)
                if button.titleLabel!.text == "Replay"{
                    self.viewDidLoad()
                }
            }else{
                bullCow.text = "\(count.bulls) Bulls and \(count.cows) Cows."
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bullCow.text = ""
        self.button.setTitle("Check", for: .normal)
        answer.text = RandomWord()
        answerWord.text = ""
        // Do any additional setup after loading the view.
    }


}

