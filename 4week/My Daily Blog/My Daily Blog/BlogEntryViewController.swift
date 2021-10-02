//
//  BlogEntryViewController.swift
//  My Daily Blog
//
//  Created by 루딘 on 2021/10/01.
//

import UIKit

class BlogEntryViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var blogEntryTextView: UITextView!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            let blogEntry = BlogEntry(context: context);
            blogEntry.date = datePicker.date
            blogEntry.content = blogEntryTextView.text
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext();
        }
    }
}
