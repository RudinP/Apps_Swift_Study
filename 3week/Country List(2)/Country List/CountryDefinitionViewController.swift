
import UIKit

class CountryDefinitionViewController: UIViewController {

    @IBOutlet weak var bigFlagLabel: UILabel!
    @IBOutlet weak var countryDefinitionLabel: UILabel!
    
    var country = "🇨🇦";//var을 사용하려면 선언과 동시에 정의되어야하므로 캐나다 국기 사용.
    override func viewDidLoad() {
        super.viewDidLoad()
        bigFlagLabel.text = country;
        
        //let flags = ["🇧🇷", "🇳🇿", "🇵🇰", "🇨🇦", "🇺🇸"];
        if country == "🇧🇷"{
            countryDefinitionLabel.text = "Brazil"
        }
        if country == "🇳🇿"{
            countryDefinitionLabel.text = "NewZealand"
        }
        if country == "🇵🇰"{
            countryDefinitionLabel.text = "Pakistan"
        }
        if country == "🇨🇦"{
            countryDefinitionLabel.text = "Canada"
        }
        if country == "🇺🇸"{
            countryDefinitionLabel.text = "USA"
        }
    }
    
}
