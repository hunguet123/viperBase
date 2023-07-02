//
//  LoginInteractor.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation
import UIKit

class LoginInteractor: LoginInteractorInputProtocol {
    var presenter: LoginInteractorOutputProtocol?
    
    
    // MARK: Interactor 
    func login(withPresenting viewController: UIViewController) {
        GoogleLogin.shared.signIn(withPresenting: viewController) { state in
            switch state {
            case .Success:
                self.presenter?.loginSuccess()
            case .Error:
                self.presenter?.loginError()
            }
        }
    }
   
}
