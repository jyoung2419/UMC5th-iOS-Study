//
//  ShoppingTableViewCell.swift
//  Baemin
//
//  Created by 정진영 on 2023/11/02.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {

    
    @IBOutlet weak var pizzaImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
