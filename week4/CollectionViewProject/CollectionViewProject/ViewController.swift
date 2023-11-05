
import UIKit

class ViewController: UIViewController {

    let productName = ["에어팟맥스실버","에어팟 맥스 스페이스그레이 S급 판매", "[S급]에어팟 맥스 스페이스 그레이 풀박 판매합니다.","아이폰12pro실버","맥북미개봉 판매합니다"]
    let address = ["서울특별시 양천구", "서울특별시 광진구", "서울특별시 구로구", "양천구 신정동","양천구 목동"]
    let productPrice = ["370,000원", "490,000원", "550,000원", "110만원","235만원"]
    let productImg = [UIImage(named: "airpodMax1"), UIImage(named: "airpodMax2"), UIImage(named: "airpodMax3"), UIImage(named: "iphone1"), UIImage(named: "macbook")]
        
    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet var tableView: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        listTableView?.delegate = self
        listTableView?.dataSource = self
    }
    
    //MARK: - nib파일 등록과 delegate, dataSource 선언
    func setUpTableView() {
        models.append(Model(imageName: "icetray1", title: "캐릭터 틀 얼음 트레이", price: "3,000원"))
        models.append(Model(imageName: "icetray2", title: "키친플라워 DW1201CP 얼음틀", price: "62,000원"))
        models.append(Model(imageName: "icetray3", title: "얼음 트레이 소(얼음판)/개당 판매", price: "1,000원"))
        models.append(Model(imageName: "icetray4", title: "실리콘 얼음틀", price: "2,000원"))
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "firstCollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "firstCollectionTableViewCell") //nib 파일 등록
        tableView.separatorStyle = .none //cell 구분선 없애기
        
    }


}

    //MARK: - 테이블 뷰 구성
extension ViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "firstCollectionTableViewCell", for: indexPath) as! firstCollectionTableViewCell
            cell.configure(with: models)
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! CustomTableViewCell
            
            let backgroundView = UIView()
            backgroundView.backgroundColor = UIColor.clear
            
            cell.selectedBackgroundView = backgroundView
            
            cell.productImg.image = productImg[indexPath.row]
            cell.productName?.text = productName[indexPath.row]
            cell.productAddress.text = address[indexPath.row]
            cell.productPrice.text = productPrice[indexPath.row]
            
            //return cell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productName.count
    }
    
}
