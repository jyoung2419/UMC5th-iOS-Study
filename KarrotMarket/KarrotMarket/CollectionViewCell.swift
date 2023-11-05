//
//  CollectionViewCell.swift
//  KarrotMarket
//
//  Created by 정진영 on 2023/10/30.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CollectionViewCell"
    
    @IBOutlet weak var collectionItemImage: UIImageView!
    
    @IBOutlet weak var collectionItemName: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    
    func setData(userData: ItemDataModel){
        collectionItemName.text = userData.itemName
        collectionItemImage.image = UIImage(named: userData.itemImageName!)
    }
}
