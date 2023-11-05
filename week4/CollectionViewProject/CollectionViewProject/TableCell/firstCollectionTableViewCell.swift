
import UIKit

class firstCollectionTableViewCell: UITableViewCell {

    func configure(with models: [Model]){
        self.models = models
        collectionView.reloadData()
    }
    
    @IBOutlet weak var ProductTitle: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var models = [Model]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
    }
    
    //MARK: - nib파일 등록과 delegate, dataSource 선언
    func setUpCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "firstCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "firstCollectionViewCell")
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


extension firstCollectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCollectionViewCell", for: indexPath) as! firstCollectionViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
    
}
