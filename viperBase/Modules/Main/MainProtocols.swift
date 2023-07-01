//
//  MainProtocols.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 29/06/2023.
//

import Foundation

// MARK: - Wireframe
protocol MainWireFrameProtocol: AnyObject {
    func pushHomeScreen()
}

// MARK: - Presenter
protocol MainPresenterProtocol: AnyObject {
    func pushHomeScreen()
}

// MARK: - View
protocol MainViewProtocol: AnyObject {
    var presenter: MainPresenterProtocol? {get set}
}
