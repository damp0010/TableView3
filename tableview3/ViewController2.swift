//
//  ViewController.swift
//  tableview3
//
//  Created by 田中　徳充 on 2019/06/07.
//  Copyright © 2019 田中　徳充. All rights reserved.
//

import UIKit
var contents2:[String] = []
class ViewController2: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey:"List2") != nil{
            
            contents2 = UserDefaults.standard.object(forKey:"List2") as! [String]
        }
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBAction func addButton2(_ sender: Any){        contents2.append(textField2.text!)
        textField2.text = ""
        UserDefaults.standard.set( contents2, forKey: "List2")
    }
    
    
    
}
