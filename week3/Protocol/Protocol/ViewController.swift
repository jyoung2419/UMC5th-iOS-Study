//
//  ViewController.swift
//  Protocol
//
//  Created by 정진영 on 2023/10/12.
//

import UIKit

protocol Flyable{
    func fly()
}

protocol Runnable{
    func run()
}

class Person : Flyable, Runnable{
    func run() {
        print("달렸다.")
    }
    
    func fly() {
        print("날았다.")
    }
    
}

class ViewController: UIViewController {
    
    let person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        person.fly()
        person.run()
    }


}

