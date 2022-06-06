//
//  ViewController.swift
//  MessangerVK
//
//  Created by Alexander Morozov on 21.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet var userLoginTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    
    
    let toTabBarControllerSegue = "toTabBarControllerSegue"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        self.view.addGestureRecognizer(recognizer)
    }

    @objc func onTap() {
        self.view.endEditing(true)
    }
        
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let checkResult = checkUserData()
        
        if !checkResult {
            showLoginError()
        }
            return checkResult
    }
 
    func checkUserData() -> Bool {
        guard let login = userLoginTextField.text,
              let password = userPasswordTextField.text else { return false }
        
        if login == "Hello" && password == "1" {
            return true
        } else {
            return false
        }
    }
    
    func showLoginError() {
        let alert = UIAlertController(title: "Error", message: "Wrong login or password", preferredStyle: .alert)
        let action = UIAlertAction(title: "Try again", style: .cancel, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func signInButtonPressed(_ sender: Any) {
    
        
        let wrongAnswerColor = #colorLiteral(red: 0.9962809682, green: 0.00303130853, blue: 0.1989840865, alpha: 0.08)

        if let login = userLoginTextField.text, login == "Hello" {
        userLoginTextField.backgroundColor = UIColor.clear
        } else {
        userLoginTextField.backgroundColor = wrongAnswerColor
        }

        if let password = userPasswordTextField.text, password == "1" {
            userPasswordTextField.backgroundColor = UIColor.clear
        } else {
            userPasswordTextField.backgroundColor = wrongAnswerColor
        }
    
        if checkUserData() {
    performSegue(withIdentifier: toTabBarControllerSegue, sender: nil)
    
    }
    
    
    
}
}
