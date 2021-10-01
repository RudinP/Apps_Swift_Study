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
    
    var entriesViewController: BlogEntriesTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        let blogEntry = BlogEntry()
        blogEntry.date = datePicker.date
        blogEntry.content = blogEntryTextView.text
        
        //Add entry to tableview array
        entriesViewController?.blogEntries.append(blogEntry);
        entriesViewController?.tableView.reloadData();
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
