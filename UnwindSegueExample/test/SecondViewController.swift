//
//  SecondViewController.swift
//  test
//
//  Created by ronatory on 25.10.16.
//  Copyright © 2016 ronatory. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  @IBOutlet weak var saveButtonPressed: UIBarButtonItem!
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // check safely with guard that your save button is the sender and you can use it
    // if not print message
    guard let uiBarButtonItem = sender as? UIBarButtonItem else {
      print("There is no UIBarButtonItem sender")
      return
    }
    
    // check if you selected the save button
    if saveButtonPressed == uiBarButtonItem {
      print("save button selected")
    }
  }
}
