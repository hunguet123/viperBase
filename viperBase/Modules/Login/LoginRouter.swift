//
//  LoginRouter.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation
import UIKit

class LoginRouter {
    weak var viewController: UIViewController?
    
    func createModule() -> UIViewController {
        let view = LoginViewController(nibName: nil, bundle: nil)
        let interactor = LoginInteractor()
        let router = LoginRouter()
        let presenter = LoginPresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }
}

extension LoginRouter: LoginWireframeProtocol {
    func pushHomeScreen() {
        let vc = HomeRouter().createModule()
        self.viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}
