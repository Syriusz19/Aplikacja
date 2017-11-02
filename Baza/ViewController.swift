//
//  ViewController.swift
//  Baza
//
//  Created by Eustachy on 02.11.2017.
//  Copyright © 2017 Eustachy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!

    @IBOutlet weak var loginField: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var show: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.show.isHidden=true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func zaloguj(_ sender: Any) {
        var login:String? = loginField.text
        var password:String? = passwordField.text
        if(login == "Janusz" && password == "zaq"){
            print("Zalogowano")
        }
        else
        {
            show.textColor = UIColor.red
            self.show.isHidden=false
            self.show.text = ("Error Login or Password")
        }
        
    }
}
