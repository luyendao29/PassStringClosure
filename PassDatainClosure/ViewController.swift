//
//  ViewController.swift
//  PassDatainClosure
//
//  Created by Boss on 5/12/19.
//  Copyright © 2019 Boss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFiled: UITextField!
    var number: String?
    var fillnumber: ((String?) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        if number != nil{
            textFiled.text = number
        }
    }
    @IBAction func passData(_ sender: UIButton) {
        fillnumber?(textFiled.text)
        navigationController?.popViewController(animated: true)
    }
    

}

