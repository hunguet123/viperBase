//
//  LoginViewController.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    var presenter: LoginPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    @IBAction func tapOnLogin(_ sender: Any) {
        presenter?.login(withPresenting: self)
    }
    
}


// MARK: - LoginViewProtocol
extension LoginViewController: LoginViewProtocol {
    func loginSuccess() {
        presenter?.router?.pushHomeScreen()
    }
    
    func loginError() {
    }
    
    
}
