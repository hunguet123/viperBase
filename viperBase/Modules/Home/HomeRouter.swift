//
//  HomeRouter.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation
import UIKit

class HomeRouter: HomeWireframeProtocol {
    weak var view: UIViewController?
    
    func createModule()-> UIViewController {
        let view = HomeViewController()
        let router = HomeRouter()
        let interactor = HomeInteractor()
        let presenter = HomePresenter(view: view, router: router, interactor: interactor)
        view.presenter = presenter
        router.view = view
        interactor.presenter = presenter
        return view
    }
    
    func pushLoginScreen() {
        let vc = LoginRouter().createModule()
        view?.navigationController?.pushViewController(vc, animated: true)
    }
}
