//
//  ViewController.swift
//  Download-Parsing-JSON-data
//
//  Created by ronatory on 12.10.16.
//  Copyright © 2016 ronatory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var idLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var typeLabel: UILabel!
  @IBOutlet weak var commentLabel: UILabel!
  @IBOutlet weak var shareLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Note: To use a http:// URL change your App Transport Security Settings like explained in the README.md
    // You can change the url: "http://graph.facebook.com/?id=<YOUR-URL>"
    let jsonUrlAsString = "http://graph.facebook.com/?id=https://www.facebook.com/"
    
    
    // configuration, making a GET request, with headers
    let configuration = URLSessionConfiguration.default
    let headers: [NSObject : AnyObject] = ["Accept" as NSObject: "application/json" as AnyObject]
    // if you have additional headers, like an authentication token or something, it would look like this
    // let headers: [NSObject : AnyObject] = ["Accept" as NSObject: "application/json" as AnyObject, "Auth" as NSObject: "token" as AnyObject]
    configuration.httpAdditionalHeaders = headers
    let session = URLSession(configuration: configuration)
    
    // make the network download task
    let downloadTask = session.dataTask(with: URL(string: jsonUrlAsString)!) { (dataReceived, response, error) in
      // check for errors
      if error == nil {
        print("dataReceived = \(dataReceived)")
        do {
          // convert the downloaded NSData to JSON object
          // Note: several options inside JSONReadingOptions available
          if let dataDownloadedAsJson = try JSONSerialization.jsonObject(with: dataReceived!, options: .allowFragments) as? [String:AnyObject] {
            print("dataDownloadedAsJson = \(dataDownloadedAsJson)")
            
            // use Grand Central Dispatch to run UI code in the UI thread
            DispatchQueue.main.async {
              // set UI elements
              if let id = dataDownloadedAsJson["id"] as? String {
                 self.idLabel.text = "id: \(id)"
              }
              if let description = dataDownloadedAsJson["og_object"]?["description"] as? String {
                self.descriptionLabel.text = "description: \(description)"
              }
              if let title = dataDownloadedAsJson["og_object"]?["title"] as? String {
                self.titleLabel.text = "title: \(title)"
              }
              if let type = dataDownloadedAsJson["og_object"]?["type"] as? String {
                self.typeLabel.text = "type: \(type)"
              }
              if let commentCount = dataDownloadedAsJson["share"]?["comment_count"] as? Int {
                self.commentLabel.text = "comment count: \(commentCount)"
              }
              if let shareCount = dataDownloadedAsJson["share"]?["share_count"] as? Int {
                self.shareLabel.text = "share count: \(shareCount)"
              }
            }
          }
        } catch {
          
        }
      } else {
        print("Error downloading data. Error = \(error)")
      }
    }
    
    // execute the task
    downloadTask.resume()
  }
}

