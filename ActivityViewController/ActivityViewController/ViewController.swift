//
//  ViewController.swift
//  ActivityViewController
//
//  Created by ronatory on 17.10.16.
//  Copyright © 2016 ronatory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let sharingText = "Sharing Text"
  
  @IBAction func activityViewButtonPressed(_ sender: UIButton) {
    let activityViewController: UIActivityViewController = UIActivityViewController(activityItems: [sharingText], applicationActivities: nil)
    
    
    activityViewController.popoverPresentationController?.sourceView = sender
    
    activityViewController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.unknown
    
    activityViewController.popoverPresentationController?.sourceRect = CGRect(x: 150, y: 150, width: 0, height: 0)
    
    // exclude the sharing options you don't want to use
    activityViewController.excludedActivityTypes = [
      UIActivityType.addToReadingList,
      UIActivityType.airDrop,
      UIActivityType.assignToContact,
      UIActivityType.postToVimeo,
      UIActivityType.postToWeibo,
      UIActivityType.print,
      UIActivityType.saveToCameraRoll
    ]
    
    self.present(activityViewController, animated: true, completion: nil)
  }

}

