//
//  AddNewUserViewController.swift
//  My Service
//
//  Created by Teacher on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class AddNewUserViewController: UIViewController {
    
    //Implicit
    var nameString: String? = nil
    var userString: String? = nil
    var passwordString: String? = nil
    
    
    
    
    
    
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        //Get Value From TextField
        nameString = nameTextField.text
        userString = userTextField.text
        passwordString = passwordTextField.text
        
        //Check Space
        let intName = nameString?.characters.count
        let intUser = userString?.characters.count
        let intPassword = passwordString?.characters.count
        
        if (intName == 0) || (intUser == 0) || (intPassword == 0) {
            //Have Space
            print("Have Space")
            alertLabel.alpha = 1
        } else {
        
            print("No Space")
            alertLabel.alpha = 0
            let strMyURL = "http://androidthai.in.th/snru/addUserMaster.php?isAdd=true&Name=" + nameString! + "&User=" + userString! + "&Password=" + passwordString! + ""
            print("strMyURL ==> \(strMyURL)")
            uploadValueToServer(strURL: strMyURL)
        
        }

        
        
    }   // saveButton
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print("This is AddNewUser")
        
        
    }   // Main Method
    
    func uploadValueToServer(strURL: String) -> Void {
        
                //Process Connected Http
                let urlPHP = strURL
                //Change String to url String
                let myURL = URL(string: urlPHP)
        
                let request = NSMutableURLRequest(url: myURL!)
                let task = URLSession.shared.dataTask(with: request as URLRequest){
                    data, response, error in
        
                    if error != nil {
                        print("Error ==> \(String(describing: error))")
                    }   else {
        
                        if let unwrappedData = data {
        
                            let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                            let strJSON = dataString as Any
                            print("strJSON ==> \(strJSON)")
                        
                        }
                    
                    }   // if1
                    
                }
                task.resume()
        
              
        performSegue(withIdentifier: "BackHome", sender: self)
        
//        let storyboard = UIStoryboard(name: "Home", bundle: nil)
//        let vc = storyboard.instantiateViewControllerWithIdentifier("mainVC")

        
    }   // uploadValue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goHome" {
        
            if let desination = segue.destination as? ViewController {
               desination.myString = (sender as? String)!
            }
            
        }   // if
        
    }   // prepare
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   // didReceive

}   // Main Class
