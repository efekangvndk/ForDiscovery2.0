//
//  ViewController.swift
//  ForDiscovery2.0
//
//  Created by Efekan Güvendik on 9.11.2023.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ParseObject = PFObject(className: "Fruit")
        ParseObject["Name"] = "Apple"
        ParseObject.saveInBackground { (success, error) in
            if error != nil {
                print(error?.localizedDescription ?? "Error")
            } else{
                print("Upload Success")
            }
        }
        
    }


}

