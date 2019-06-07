//
//  ViewController.swift
//  tableview3
//
//  Created by 田中　徳充 on 2019/06/07.
//  Copyright © 2019 田中　徳充. All rights reserved.
//

import UIKit
      var contents:[String] = []
class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey:"List") != nil{
            
            contents = UserDefaults.standard.object(forKey:"List") as! [String]
        }
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func addButton(_ sender: Any) {
    
    
    contents.append(textField.text!)
    textField.text = ""
    UserDefaults.standard.set( contents, forKey: "List")
    
    }
}
