//
//  ViewController.swift
//  LoginName
//
//  Created by Chinonso Obidike on 1/29/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var loginName: String?; //will hold information that will come from LoginViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let loginName: String = loginName {
            label.text = "Welcome, \(loginName).";
        }
    }


}

