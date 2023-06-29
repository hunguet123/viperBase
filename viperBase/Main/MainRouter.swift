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
        let presenter = MainPresenter(view: view, router: router)
        
        view.presenter = presenter
        router.viewController = view
        
        return view
    }
}

extension MainRouter: MainWireFrameProtocol {
    func pushHomeScreen() {
        // TODO: push screen here
        print("push screen")
    }
    
}
