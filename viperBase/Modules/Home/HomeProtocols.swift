//
//  HomeProtocols.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 02/07/2023.
//

import Foundation

// MARK: - Wireframe
protocol HomeWireframeProtocol: AnyObject {
    func pushLoginScreen()
}

// MARK: - Presenter
protocol HomePresenterProtocol: AnyObject {
    func logOut()
}

// MARK: - Interactor
protocol HomeInteractorOutputProtocol: AnyObject {
    func logOutSuccess()
    func logOutError()
}

protocol HomeInteractorInputProtocol: AnyObject {
    var presenter: HomeInteractorOutputProtocol? {get set}
    func logOut()
}

// MARK: - View
protocol HomeViewProtocol: AnyObject {
    
}
