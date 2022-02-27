//
//  LoginViewController.swift
//  MyGreatApp
//
//  Created by Str1de on 26.02.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
        
    let user = User.getUserData()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "loginSegue" else { return }
        guard let WelcomeVC = segue.destination as? WelcomeViewController else { return }
        WelcomeVC.user = user
    }
    
    @IBAction func LogInPressed() {
        guard
            userNameTextField.text == user.login,
            passwordTextField.text == user.password
        else {
            showAlert(title: "Wrong login or password",
                      message: "Please input login or password correctly",
                      textField: passwordTextField)
            return
        }
        performSegue(withIdentifier: "loginSegue", sender: nil)
    }
    
    @IBAction func forgotUsernamePressed() {
        showAlert(title: "Oops!", message: "Your login is \(user.login) 😀!")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops", message: "Your password is \(user.password) 😀!")
    }
    
    
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
    
}
    
    //MARK: Alert Controller
    extension LoginViewController {
        private func showAlert(title: String, message: String, textField: UITextField? = nil) {
            let MyAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let ActionOK = UIAlertAction(title: "Ok", style: .default) { _ in
                textField?.text = nil
            }
            MyAlert.addAction(ActionOK)
            present(MyAlert, animated: true)
        }
    }

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            LogInPressed()
        }
        return true
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

