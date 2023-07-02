//
//  LoginPresenter.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation
import UIKit

class LoginPresenter: LoginPresenterProtocol {
    weak private var view: LoginViewProtocol?
    var interactor: LoginInteractorInputProtocol?
    var router: LoginWireframeProtocol?
    
    init(view: LoginViewProtocol, interactor: LoginInteractorInputProtocol, router: LoginWireframeProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func login(withPresenting viewController: UIViewController) {
        interactor?.login(withPresenting: viewController)
    }
    
}

// MARK: - LoginInteractorOutput
extension LoginPresenter: LoginInteractorOutputProtocol {    
    func loginError() {
        view?.loginError()
    }
    
    func loginSuccess() {
        view?.loginSuccess()
    }
    
}
