//
//  ViewController.swift
//  BookList
//
//  Created by 루딘 on 2021/10/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchBookData { books in
            for book in books{
                print(book.title!)
            }
        }
    }

    func fetchBookData(completionHandeler: @escaping([Book]) -> Void){
        let bookListURL = "https://oakbooklist-default-rtdb.europe-west1.firebasedatabase.app/data/books.json"
        
        guard let url = URL(string: bookListURL) else{return} //if let 대용인데 더 좋대요
        
        let dataTask = URLSession.shared.dataTask(with: url) {(data,response,error) in
            do{
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Book].self, from: data!)
                
                completionHandeler(jsonData)
            }catch{
                let error = error
                print(error.localizedDescription)
            }
        }
        dataTask.resume()
    }
}

