//
//  ViewController.swift
//  Discord-Api
//
//  Created by Mohamad Mortada on 9/20/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let messageString: String = "Hello"

          guard let url = URL(string: "PUT-YOUR-FULL-WEBHOOK-LINK-HERE") else { return }
          let messageJson: [String: Any] = ["content": messageString]
          let jsonData = try? JSONSerialization.data(withJSONObject: messageJson)
          var request = URLRequest(url: url)
          request.httpMethod = "POST"
          request.addValue("application/json", forHTTPHeaderField: "content-type")
          request.httpBody = jsonData
          let task = URLSession.shared.dataTask(with: request)
          task.resume()
        print("success")
       

    }
  
}
