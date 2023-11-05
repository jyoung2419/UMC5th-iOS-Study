//
//  ViewController.swift
//  week2
//
//  Created by 정진영 on 2023/10/04.
//

import UIKit

class ViewController: UIViewController {
    // 타이머가 구동되면 실핼할 함수
        let timeSelector : Selector = #selector(ViewController.updateTime)
        let interval = 1.0 // 타이머 간격. 1초
        var count = 0 // 타이머가 설정한 간격대로 실행되는지 확인하기 위한 변수
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
            }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender // 전달된 인수 저장
                
                let formatter = DateFormatter() // DateFormatter 클래스 상수 선언
                formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE" // formatter의 dateFormat 속성을 설정
                lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
                
    }
    @objc func updateTime(){
        let date = NSDate() // 현재 시간을 가져옴
        
        let formatter = DateFormatter() // DateFormatter라는 클래스의 상수 formatter를 선언
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        lblCurrentTime.text = "현재시간 : "+formatter.string(from: date as Date)
    }
}

