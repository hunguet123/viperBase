//
//  HomePresenter.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation

class HomePresenter: HomePresenterProtocol {
    weak private var view: HomeViewProtocol?
    private let router: HomeWireframeProtocol?
    private let interactor: HomeInteractorInputProtocol?
    
    init(view: HomeViewProtocol, router: HomeWireframeProtocol, interactor: HomeInteractorInputProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func logOut() {
        interactor?.logOut()
    }
    
}

extension HomePresenter: HomeInteractorOutputProtocol {
    func logOutSuccess() {
        router?.pushLoginScreen()
    }
    
    func logOutError() {
        print("error logout")
    }
    
    
}
