//
//  ViewController.swift
//  KarrotMarket
//
//  Created by 정진영 on 2023/10/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func buttonGoMenu(_ sender: Any) {
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else {
            return
        }
        nextVC.previousViewController = self
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    
    @IBOutlet weak var listTableView: UITableView!
    
    let cellName:String = "CustomCollecitonViewCell"

    let productName = ["에어팟맥스실버","에어팟 맥스 스페이스그레이 S급 판매", "[S급]에어팟 맥스 스페이스 그레이 풀박 판매합니다.","아이폰12pro실버","맥북미개봉 판매합니다"]
    let address = ["서울특별시 양천구", "서울특별시 광진구", "서울특별시 구로구", "양천구 신정동","양천구 목동"]
    let productPrice = ["370,000원", "490,000원", "550,000원", "110만원","235만원"]
    let productImg = [UIImage(named: "airpodMax1"), UIImage(named: "airpodMax2"), UIImage(named: "airpodMax3"), UIImage(named: "iphone1"), UIImage(named: "macbook")]
    let comment = ["23","14","6","10","4"]
    let like = ["3","53","13","32","7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //listTableView.separatorStyle = .singleLine
        //listTableView.separatorInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        listTableView.delegate = self
        listTableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 147 : 150
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else {
            return productName.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
            
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: collectionTableViewCell.identifier, for: indexPath) as? collectionTableViewCell else{ return UITableViewCell() }
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! CustomTableViewCell
            
            let backgroundView = UIView()
            backgroundView.backgroundColor = UIColor.clear
            
            cell.selectedBackgroundView = backgroundView
            
            cell.productImg.image = productImg[indexPath.row]
            cell.productName?.text = productName[indexPath.row]
            cell.productAddress.text = address[indexPath.row]
            cell.productPrice.text = productPrice[indexPath.row]
            cell.comment.text = comment[indexPath.row]
            cell.like.text = like[indexPath.row]
            
            return cell
            
            
        default:
            return UITableViewCell()
        }
    }
}

