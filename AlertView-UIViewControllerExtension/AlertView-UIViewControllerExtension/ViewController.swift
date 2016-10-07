//
//  ViewController.swift
//  AlertView-UIViewControllerExtension
//
//  Created by ronatory on 07.10.16.
//  Copyright © 2016 ronatory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func alertViewButtonPressed(_ sender: UIButton) {
    // without title
    showAlert(message: "This is the alert message")
    
    // with title and message
    // showAlert(title: "This is the alert title", message: "This is the alert message")
  }
  

}

