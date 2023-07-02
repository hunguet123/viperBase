//
//  MainProtocols.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 29/06/2023.
//

import Foundation
import UIKit

// MARK: - Wireframe
protocol MainWireFrameProtocol: AnyObject {
    func pushScreen(viewController view: UIViewController)
}

// MARK: - Presenter
protocol MainPresenterProtocol: AnyObject {
    func checkLoginState()
}

// MARK: - View
protocol MainViewProtocol: AnyObject {
    var presenter: MainPresenterProtocol? {get set}
}

// MARK: - Interactor
protocol MainInteractorInputProtocol: AnyObject {
    var presenter: MainInteractorOutputProtocol? {get set}
    func checkLoginState()
}

protocol MainInteractorOutputProtocol: AnyObject {
    func pushScreen(viewController view: UIViewController)
}
