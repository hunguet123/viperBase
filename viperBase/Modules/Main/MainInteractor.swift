//
//  MainInteractor.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation

class MainInteractor: MainInteractorInputProtocol {
    var presenter: MainInteractorOutputProtocol?
    
    func checkLoginState() {
        if GoogleLogin.shared.checkUserLoginStatus() == .isLogin {
            let vc = HomeRouter().createModule()
            presenter?.pushScreen(viewController: vc)
        } else if GoogleLogin.shared.checkUserLoginStatus() == .isLogout {
            let vc = LoginRouter().createModule()
            presenter?.pushScreen(viewController: vc)
        }
    }
    
}
