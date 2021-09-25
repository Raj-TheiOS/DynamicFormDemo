//
//  ViewController.swift
//  DynamicFormDemo
//
//  Created by Raj on 05/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i=1
    var y=136
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        manageTextFields()
        manageLabels()
        manageButton()
    }
    
    func manageTextFields() {
        for i in 1...5 {
            let myField:UITextField = UITextField(frame: CGRect(x: 23, y: y, width: 340, height: 30))
            myField.borderStyle = .roundedRect
            myField.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            myField.layer.borderWidth=1.0
            self.view.addSubview(myField)
            y = y+52
            
            if i == 1 {
                myField.placeholder = "First Name"
                myField.tag = 1
            } else if i == 2 {
                myField.placeholder = " Last Name"
                myField.tag = 2
            } else if i == 3 {
                myField.placeholder = "User Name"
                myField.tag = 3
            } else if i == 4 {
                myField.placeholder = "Email"
                myField.tag = 4
            } else if i == 5 {
                myField.placeholder = "Password"
                myField.tag = 5
            }
        }
    }
    
    func manageLabels() {
        let myLbl:UILabel = UILabel(frame: CGRect(x: 16, y: 80, width: 343, height: 21))
        myLbl.text = "Registration Form"
        myLbl.textAlignment = .center
        myLbl.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        self.view.addSubview(myLbl)
    }
    
    func manageButton() {
        let mybtn:UIButton = UIButton (frame: CGRect(x: 141, y: 430, width: 93, height: 30))
        mybtn.setTitle("Register", for: .normal)
        mybtn.setTitleColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), for: .normal)
        mybtn.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        mybtn.addTarget(self, action: #selector(valueChange), for: .touchUpInside)
        self.view.addSubview(mybtn)
    }
    
    @objc func valueChange() {
        print("Button is Tapped")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

