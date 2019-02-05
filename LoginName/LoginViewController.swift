//
//  LoginViewController.swift
//  LoginName
//
//  Created by Chinonso Obidike on 1/29/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //Called automatically when we segue
        //from the red LoginViewController to the orange ViewController.
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            super.prepare(for: segue, sender: sender);
            //segue(a method of the superclass UIViewController) cannot access the destination method of the subclass ViewController. To access that method, the .destination method has to be downcasted to the ViewController subclass.
            if let viewController: ViewController = segue.destination as? ViewController, let text: String = textField.text {
                    //Transmit information from the LoginViewController to the ViewController.
                viewController.loginName = text;
                }
        }
    
    
    @IBAction func returnButtonPressed(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
}
