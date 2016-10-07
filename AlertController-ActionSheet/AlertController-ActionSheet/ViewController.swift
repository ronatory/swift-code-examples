//
//  ViewController.swift
//  AlertController-ActionSheet
//
//  Created by ronatory on 07.10.16.
//  Copyright © 2016 ronatory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func actionSheetButtonPressed(_ sender: UIButton) {

    let menu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
    
    let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: {
      (alert: UIAlertAction!) -> Void in
      print("Deleted")
    })
    
    let saveAction = UIAlertAction(title: "Save", style: .default, handler: {
      (alert: UIAlertAction!) -> Void in
      print("Saved")
    })
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
      (alert: UIAlertAction!) -> Void in
      print("Cancelled")
    })
    
    menu.addAction(deleteAction)
    menu.addAction(saveAction)
    menu.addAction(cancelAction)
    
    self.present(menu, animated: true, completion: nil)
  }
}

