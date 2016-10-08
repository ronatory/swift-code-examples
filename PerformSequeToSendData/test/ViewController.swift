//
//  ViewController.swift
//  test
//
//  Created by ronatory on 08.10.16.
//  Copyright © 2016 ronatory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {  
  
  let boyGender = "boy"
  let girlGender = "girl"
  var selectedGender: String?
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "segueToTraits"{
      if let gender = self.selectedGender {
        let traitVC = segue.destination as? TraitViewController
        traitVC!.gender = gender
      }
    }
  }
  
  func sendGenderToTraitsView(gender : String?){
    performSegue(withIdentifier: "segueToTraits", sender: self)
    
  }
  
  @IBAction func button1(sender: UIButton) {
    selectedGender = boyGender
    self.sendGenderToTraitsView(gender: selectedGender)
  }
  
  
  @IBAction func button2(sender: UIButton) {
    selectedGender = girlGender
    self.sendGenderToTraitsView(gender: selectedGender)
  }

}


