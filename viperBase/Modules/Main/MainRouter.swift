//
//  MainRouter.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 29/06/2023.
//

import Foundation
import UIKit

class MainRouter {
    weak var viewController: UIViewController?
    
    // MARK: - Create Module
    static func createModule()-> UIViewController {
        let view = ViewController()
        let router = MainRouter()
        let interactor = MainInteractor()
        let presenter = MainPresenter(view: view, router: router, interactor: interactor)
        
        view.presenter = presenter
        router.viewController = view
        interactor.presenter = presenter
        
        return view
    }
}

extension MainRouter: MainWireFrameProtocol {
    func pushScreen(viewController view: UIViewController) {
        self.viewController?.navigationController?.pushViewController(view, animated: true)
    }
    
}
