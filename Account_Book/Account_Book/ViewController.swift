//
//  ViewController.swift
//  Account_Book
//
//  Created by Muharrem Köroğlu on 15.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedUserName = UserDefaults.standard.object(forKey: "userName")
        let storedPassword = UserDefaults.standard.object(forKey: "password")
        
        //Casting
        
        if let lastUserName = storedUserName as? String {
            userNameLabel.text = "Last User Name: \(lastUserName)"
        }
        
        if let lastPassword = storedPassword as? String{
            passwordLabel.text = "Last Password: \(lastPassword)"
        }
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(userNameTextField.text, forKey: "userName")
        UserDefaults.standard.set(passwordTextField.text, forKey: "password")
        
        userNameLabel.text = "User Name: \(userNameTextField.text!)"
        passwordLabel.text = "Password: \(passwordTextField.text!)"
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedUserName = UserDefaults.standard.object(forKey: "userName")
        let storedPassword = UserDefaults.standard.object(forKey: "password")
        
        if(storedUserName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "userName")
            userNameLabel.text = "Last User Name Deleted"
        }
        
        
        if (storedPassword as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "password")
            passwordLabel.text = "Last Password Deleted"
        }
        
        
    }
    
    

}

