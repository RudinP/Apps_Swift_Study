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
    @IBOutlet weak var botConstraint: NSLayoutConstraint!
    var blogEntry: BlogEntry?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        if blogEntry == nil{
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
                blogEntry = BlogEntry(context: context);
                blogEntry?.date = datePicker.date
                blogEntry?.content = blogEntryTextView.text
                blogEntryTextView.becomeFirstResponder() //키보드 팝업
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
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            
            botConstraint.constant = keyboardHeight
        }
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
