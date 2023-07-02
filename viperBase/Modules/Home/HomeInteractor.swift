//
//  HomeInteractor.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation

class HomeInteractor: HomeInteractorInputProtocol {
    var presenter: HomeInteractorOutputProtocol?
    
    func logOut() {
        GoogleLogin.shared.logOut {
            self.presenter?.logOutSuccess()
        }
    }
    
}
