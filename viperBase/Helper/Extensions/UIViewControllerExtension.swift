//
//  UIViewControllerExtension.swift
//  viperBase
//
//  Created by Hưng Hà Quang on 01/07/2023.
//

import UIKit

extension UIViewController {
    open override func `self`() -> Self {
        self.navigationItem.hidesBackButton = true
        return self
    }
}
