//
//  ViewController.swift
//  BullsAndCows
//
//  Created by 루딘 on 2021/11/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func AnswerChecker(_ sender: Any) {
        answer.text = RandomWord()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answer.text = RandomWord()
        // Do any additional setup after loading the view.
    }


}

