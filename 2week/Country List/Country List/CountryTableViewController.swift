//
//  CountryTableViewController.swift
//  Country List
//
//  Created by 루딘 on 2021/09/20.
//

import UIKit

class CountryTableViewController: UITableViewController {
    
    let flags = ["🇧🇷", "🇳🇿", "🇵🇰", "🇨🇦", "🇺🇸"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flags.count; //줄의 수 정하기
    }

    //What is each particular item
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)//witheIdentifier은 storyboard에서 table의 하얀 칸을 선택하고 identifier에 입력한 이름을 쓰면 됨.

        cell.textLabel?.text = flags[indexPath.row]; //indexPath.row하면 칸의 순서가 리턴됨.
        
        return cell
    }
    

}
