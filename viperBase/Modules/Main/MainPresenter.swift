//
//  MainPresenter.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 29/06/2023.
//

import Foundation
import UIKit

class MainPresenter {
    weak private var view: MainViewProtocol?
    private let router: MainWireFrameProtocol?
    private let interactor: MainInteractorInputProtocol?
    
    init(view: MainViewProtocol, router: MainWireFrameProtocol, interactor: MainInteractorInputProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

extension MainPresenter: MainPresenterProtocol {
    func checkLoginState() {
        interactor?.checkLoginState()
    }
}

extension MainPresenter: MainInteractorOutputProtocol {
    func pushScreen(viewController view: UIViewController) {
        router?.pushScreen(viewController: view)
    }
}
