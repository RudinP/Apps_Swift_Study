//
//  BlogEntryTableViewCell.swift
//  My Daily Blog
//
//  Created by 루딘 on 2021/10/11.
//

import UIKit

class BlogEntryTableViewCell: UITableViewCell {
    @IBOutlet weak var monthTag: UILabel!
    @IBOutlet weak var dayTag: UILabel!
    @IBOutlet weak var entryContentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
