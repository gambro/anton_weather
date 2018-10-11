//
//  UIViewControllerExtension.swift
//  WheatherApplication
//
//  Created by Joe Franc on 10/11/18.
//  Copyright © 2018 farxat60. All rights reserved.
//

import UIKit

protocol ShowAlert: class { }

extension ShowAlert where Self: UIViewController {
    
    func showAlert(title: String, message: String, viewController: UIViewController) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            viewController.present(alert, animated: true, completion: nil)
    }
}

protocol PickerViewProtocol {
    func pass(data: Int)
}
