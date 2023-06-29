//
//  ViewController.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 28/06/2023.
//

import UIKit

class ViewController: BaseViewController, MainViewProtocol {
    var presenter: MainPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.pushHomeScreen()
    }
}

