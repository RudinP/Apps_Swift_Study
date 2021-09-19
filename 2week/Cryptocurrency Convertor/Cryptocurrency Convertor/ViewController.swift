//
//  ViewController.swift
//  Cryptocurrency Convertor
//
//  Created by 루딘 on 2021/09/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var ratioTextField: UITextField!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var toggleCurrency: UISegmentedControl!
    
    override func viewDidLoad() {//제일 처음 실행되는 기본 함수인듯하다
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = ""
    }

    @IBAction func exchangeButton(_ sender: Any) {
        let ratio = Double(ratioTextField.text!)!; //!를 쓰지 않으면 unwrapped 에러 발생
        
        let input = Double(inputTextField.text!)!;
        
        let result = ratio * input;
        
        if toggleCurrency.selectedSegmentIndex == 0{
            resultLabel.text = "BTC \(result)"
        }else{
            resultLabel.text = "ETH \(result)"
        }
        
        
    }
    
}

