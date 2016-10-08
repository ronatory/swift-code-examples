//
//  ViewController.swift
//  AlertDisappersAutomatically
//
//  Created by ronatory on 08.10.16.
//  Copyright © 2016 ronatory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBAction func alertViewButtonPressed(_ sender: AnyObject) {
    
    // the alert view
    let alert = UIAlertController(title: "", message: "alert disappears after 5 seconds", preferredStyle: .alert)
    self.present(alert, animated: true, completion: nil)
    
    // change to desired number of seconds (in this case 5 seconds)
    let when = DispatchTime.now() + 5
    DispatchQueue.main.asyncAfter(deadline: when){
      // your code with delay
      alert.dismiss(animated: true, completion: nil)
    }
  }
}

