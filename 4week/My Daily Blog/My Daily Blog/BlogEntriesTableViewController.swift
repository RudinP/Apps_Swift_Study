//
//  BlogEntriesTableViewController.swift
//  My Daily Blog
//


import UIKit

class BlogEntriesTableViewController: UITableViewController {

    var blogEntries: [BlogEntry] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool){
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            if let dataFromCoreData = try? context.fetch(BlogEntry.fetchRequest()) as? [BlogEntry]{
                
                blogEntries = dataFromCoreData;
                tableView.reloadData()
            }
        }

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return blogEntries.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let row = tableView.dequeueReusableCell(withIdentifier: "entryRow"){
            let blogEntry = blogEntries[indexPath.row]
            
            row.textLabel?.text = blogEntry.content //강의에서는 이 부분을 지우고 해결했으나, 동일한 코드임에도 내 시뮬에서는 이 부분을 주석처리하면 text처리가 안되므로 그냥 둠

            return row
        }else{
            return UITableViewCell()
        }

        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let blogEntry = blogEntries[indexPath.row]
        performSegue(withIdentifier: "onEntrySegue", sender: blogEntry)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryViewController = segue.destination as? BlogEntryViewController{
            if let onEntrySubmit = sender as? BlogEntry {
                entryViewController.blogEntry = onEntrySubmit
            }
        }
    }

}
