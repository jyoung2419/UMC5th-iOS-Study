//
//  collectionTableViewCell.swift
//  KarrotMarket
//
//  Created by 정진영 on 2023/10/30.
//
import UIKit

class collectionTableViewCell: UITableViewCell {
    
    static let identifier = "CollectionViewCell"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
       super.awakeFromNib()
        registeDelegate()
        // Initialization code
    }
    
    
    private func registeDelegate(){
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension collectionTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ItemDataModel.sampleData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        cell.setData(userData: ItemDataModel.sampleData[indexPath.row])
//        cell.collectionItemName.text = collectionName[indexPath.row]
//        cell.collectionItemImage.image = collectionImage[indexPath.row]
        return cell
    }
}
