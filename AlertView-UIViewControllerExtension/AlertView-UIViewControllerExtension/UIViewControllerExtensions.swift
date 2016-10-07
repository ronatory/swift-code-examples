//
//  UIViewControllerExtensions.swift
//  AlertView-UIViewControllerExtension
//
//  Created by ronatory on 07.10.16.
//  Copyright © 2016 ronatory. All rights reserved.
//

import UIKit

extension UIViewController {
  /**
   Create an alert
   */
  func showAlert(title: String = "", message: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
    alert.addAction(action)
    self.present(alert, animated: true, completion: nil)
  }
}
