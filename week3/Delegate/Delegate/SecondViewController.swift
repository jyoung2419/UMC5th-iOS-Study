//
//  SecondViewController.swift
//  Protocol
//
//  Created by 정진영 on 2023/10/12.
//

import UIKit

class SecondViewController: UIViewController, ChangeLabelDelegate {
    func doChange() {
        previousViewController?.label.text = self.textField.text
    }

    @IBOutlet var textField: UITextField!
    var previousViewController : ViewController?
    
    @IBAction func buttonDismiss(_ sender: Any) {
        doChange()
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        previousViewController?.delegate = self
    }
    
}
