//
//  ViewController.swift
//  SignUpForm
//
//  Created by Max on 02.10.2019.
//  Copyright © 2019 Nadzeya Artuhanava. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    private let userName = "Nadya_Faro"
    private let password = "78abc12"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 5
        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }

    @IBAction func logInAction() {
        if userNameTF.text != userName || passwordTF.text != password {
        showAlert(title: "Invalid login or password!",
                  massage: "Please enter correct login and password")
        passwordTF.text = nil
        }
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(title: "Hello!",
                  massage: "Your username is \(userName)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Hello!",
                  massage: "Your password is \(password)")
    }
    
}

extension LogInViewController: UITextFieldDelegate {
    
    private func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func showAlert(title: String, massage: String) {
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        present(alert, animated: true)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomVC = segue.destination as! WelcomeViewController
        welcomVC.userNameForWelcomeLabel = userNameTF.text!
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
}




