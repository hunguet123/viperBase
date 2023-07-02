//
//  HomeViewController.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 01/07/2023.
//

import UIKit

class HomeViewController: UIViewController {
    weak var presenter: HomePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: HomeViewProtocol {
    @IBAction func tapOnSignOut(_ sender: Any) {
        presenter?.logOut()
    }
}
