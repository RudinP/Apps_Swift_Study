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
    @IBOutlet weak var bullImage: UIImageView!
    @IBOutlet weak var cowImage: UIImageView!
    var guess:String = ""
    var answerCheck:String = ""
    @IBAction func AnswerChecker(_ sender: Any) {
       
        guess = answerWord.text!
        answerCheck = answer.text!
        if guess.count > answerCheck.count{
            bullCow.text = "Answer is shorter than your guess."
            bullImage.image = nil
            cowImage.image = nil

        }
        else if guess.count == 0{
            bullCow.text = "You should type any word."
            bullImage.image = nil
            cowImage.image = nil
        }
        else{
            var count = Count()
            count = GameFunc(guess: guess, answer: answerCheck)
            if count.bulls == answer.text?.count{
                bullCow.text = "You Won!"
                bullImage.image = nil
                cowImage.image = nil
                self.button.setTitle("Replay", for: .normal)
                if button.titleLabel!.text == "Replay"{
                    self.viewDidLoad()
                }
            }else{
                bullCow.text = "\(count.bulls) Bulls and \(count.cows) Cows."
                if count.bulls == 0{
                bullImage.image = nil
                }
                else
                {
                bullImage.image = UIImage(named: "bull.png")!
                }
                if count.cows == 0{
                cowImage.image = nil
                }
                else
                {
                cowImage.image = UIImage(named: "cow.png")!
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)
        bullCow.text = ""
        self.button.setTitle("Check", for: .normal)
        answer.text = RandomWord()
        answerWord.text = ""
        // Do any additional setup after loading the view.
    }


}

