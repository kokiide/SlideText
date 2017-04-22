//
//  ViewController.swift
//  KAKUNIN
//
//  Created by Koki Ide on 2017/04/22.
//  Copyright © 2017 kokiide. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel!
    var number : Int = 0
    var number2 : Int = 0
    let device: [String] = ["iPhone", "iPad", "Apple Watch"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(){
        if number <= -1 {
            label.text = device[0]
            number = -1

        }else{
            number = 0
            label.text = device[1]
        }
    }
    
    @IBAction func next(){
        if number >= 0 {
            number = 1
            label.text = device[2]
        }else{
            number = 0
            label.text = device[1]
        }
    }
    
    @IBAction func firstButton(){
        number = -1
        label.text = device[0]
    }
    
    @IBAction func secondButton(){
        number = 0
        label.text = device[1]
    }
    
    @IBAction func thirdButton(){
        number = 1
        label.text = device[2]
    }
    
    


}

