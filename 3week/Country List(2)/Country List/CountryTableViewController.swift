

import UIKit

class CountryTableViewController: UITableViewController {
    
    let flags = getCountries();
    
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

        cell.textLabel?.text = flags[indexPath.row].flag + "-" + flags[indexPath.row].name; //textLabel이 있다면(nil이 아니라면) 실행, 아니면 해당 라인을 스킵함.
        
        return cell
    }
    
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCountry = flags[indexPath.row];
        performSegue(withIdentifier: "DefinitionSegue", sender: selectedCountry);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let defOfViewController = segue.destination as? CountryDefinitionViewController{
            if let selectedCountry = sender as? Country{
                defOfViewController.country = selectedCountry;
            }
        }
       
    }
}
