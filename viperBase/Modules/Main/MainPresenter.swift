//
//  MainPresenter.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 29/06/2023.
//

import Foundation

class MainPresenter {
    weak private var view: MainViewProtocol?
    private let router: MainWireFrameProtocol
    
    init(view: MainViewProtocol, router: MainWireFrameProtocol) {
        self.view = view
        self.router = router
    }
}

extension MainPresenter: MainPresenterProtocol {
    func pushHomeScreen() {
        router.pushHomeScreen()
    }
    
}
