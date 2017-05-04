//
//  LoginViewController.swift
//  HelloWorld
//
//  Created by Anmol Verma on 4/28/17.
//  Copyright © 2017 mutualmobile. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController : UIViewController {
    
    
    @IBOutlet weak var edtUsername: UITextField!

    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        background.image = UIImage(named:"splashEng")
        edtUsername.delegate = self
        passwordField.delegate = self
        indicator.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func onClickSignin(_ sender: Any) {
        let username : String = edtUsername.text!
        let password : String  = passwordField.text!
        self.view.endEditing(true)
        showProgressBar()
        print(username)
        print(password)
    }
    
    func showProgressBar(){
        
        Alamofire.request("https://httpbin.org/get", method: .get, parameters: nil, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
                //to get status code
                if let status = response.response?.statusCode {
                    switch(status){
                    case 201:
                        print("example success")
                    default:
                        print("error with response status: \(status)")
                    }
                }
                //to get JSON return value
                if let result = response.result.value {
                    let JSON = result as! NSDictionary
                    print(JSON)
                }
                self.indicator.isHidden = true
                let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "home")
                self.present(homeViewController!, animated: true, completion: nil)
        }
        
        indicator.isHidden = false
        indicator.startAnimating()
    }
 
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        get {
            return .portrait
        }
    }
}



extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case edtUsername:
            passwordField.becomeFirstResponder()
        case passwordField:
            passwordField.resignFirstResponder()
        default:
            return false
        }
        return false
    }
}

