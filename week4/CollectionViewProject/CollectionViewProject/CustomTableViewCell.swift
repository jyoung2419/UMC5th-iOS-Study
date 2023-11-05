//
//  CustomTableViewCell.swift
//  CollectionViewProject
//
//  Created by 정진영 on 2023/10/30.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productAddress: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
