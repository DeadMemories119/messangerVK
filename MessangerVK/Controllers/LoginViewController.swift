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
    @IBOutlet var loginView: UIView!
    
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    

    
    let toTabBarControllerSegue = "toTabBarControllerSegue"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        self.view.addGestureRecognizer(recognizer)
        
        
        view1.alpha = 0
        view2.alpha = 0
        view1.layer.cornerRadius = view1.bounds.height/2
        view2.layer.cornerRadius = view2.bounds.height/2
        view3.layer.cornerRadius = view3.bounds.height/2
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        firstAnimation()
        loadingAnimation()
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
    
    func firstAnimation() {
        
        let positionAnimation = CABasicAnimation(keyPath: "position.y")
        positionAnimation.fromValue = 100
        positionAnimation.toValue = self.loginView.frame.origin
        positionAnimation.duration = 0.5
        
        let fadeAnimation = CABasicAnimation(keyPath: "opacity")
        fadeAnimation.fromValue = 0
        fadeAnimation.toValue = 1
        fadeAnimation.duration = 1
        self.loginView.layer.add(fadeAnimation, forKey: nil)
        self.loginView.layer.add(positionAnimation, forKey: nil)
    }
    
    
    func logAnimation() {
        
        UIView.animate(withDuration: 0.5) { [weak self] in
            guard let self = self else {return}
            self.loginView.alpha = 0
            self.loginView.transform = CGAffineTransform(translationX: 0, y: -100)
        } completion: { isSucceed in
            if isSucceed {
                self.performSegue(withIdentifier: self.toTabBarControllerSegue, sender: nil)
            }
        }
        
    }
    
    
    func loadingAnimation() {
        UIView.animate(withDuration: 0.4) { [weak self] in
            self?.view2.alpha = 0
            self?.view3.alpha = 1
        } completion: { _ in
            UIView.animate(withDuration: 0.4) { [weak self] in
            self?.view1.alpha = 1
            self?.view3.alpha = 0
        } completion: { _ in
            UIView.animate(withDuration: 0.4) { [weak self] in
            self?.view1.alpha = 0
            self?.view2.alpha = 1
        } completion: { [weak self] _ in
            self?.loadingAnimation()
        }

        
    }
        }
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
          logAnimation()
            
    }
    
    
    
}
}
