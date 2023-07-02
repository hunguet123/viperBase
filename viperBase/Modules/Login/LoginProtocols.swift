//
//  LoginProtocols.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation
import UIKit

// MARK: - wireframe
protocol LoginWireframeProtocol: AnyObject {
    func pushHomeScreen()
}

// MARK: - Presenter
protocol LoginPresenterProtocol: AnyObject {
    var interactor: LoginInteractorInputProtocol? {get set}
    var router: LoginWireframeProtocol? {get set}
    func login(withPresenting viewController: UIViewController)
}

// MARK: - Interactor
protocol LoginInteractorOutputProtocol: AnyObject {
    func loginSuccess()
    func loginError()
}

protocol LoginInteractorInputProtocol: AnyObject {
    var presenter: LoginInteractorOutputProtocol? { get set }
    
    func login(withPresenting viewController: UIViewController)
}

// MARK: - View
protocol LoginViewProtocol: AnyObject {
    var presenter: LoginPresenterProtocol? {get set}
    func loginSuccess()
    func loginError()
}
