//
//  AddNewUserViewController.swift
//  My Service
//
//  Created by Teacher on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class AddNewUserViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print("This is AddNewUser")
        
        
    }   // Main Method

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   // didReceive

}   // Main Class
