//
//  BlogEntryViewController.swift
//  My Daily Blog
//
//  Created by 루딘 on 2021/10/01.
//

import UIKit

class BlogEntryViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var blogEntryTextView: UITextView!
        
    var blogEntry: BlogEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if blogEntry == nil{
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
                blogEntry = BlogEntry(context: context);
                blogEntry?.date = datePicker.date
                blogEntry?.content = blogEntryTextView.text
            }

        }
        blogEntryTextView.text = blogEntry?.content
        if let dateToBeDisplayed = blogEntry?.date{
            datePicker.date = dateToBeDisplayed
        }
        blogEntryTextView.delegate = self;
    }
    override func viewWillDisappear(_ animated: Bool) {
        
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext();
        
    }
    @IBAction func onDelete(_ sender: Any) {
        if blogEntry != nil{
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
                context.delete(blogEntry!)
                try? context.save()
            }
        }
        navigationController?.popViewController(animated: true)
    }
    func textViewDidChange(_ textView: UITextView) {
        blogEntry?.content = blogEntryTextView.text
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
    @IBAction func onDateChanged(_ sender: Any) {
        blogEntry?.date = datePicker.date
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}
