//
//  ViewController.swift
//  checkTest
//
//  Created by Tommy on 2019/04/14.
//  Copyright © 2019 Tommy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    let array = ["iPhone", "iPad", "Apple Watch"]
    var number = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = array[number]
    }
    
    @IBAction func nextPressed() {
        if number == 2 {
            number = 0
        } else {
            number += 1
        }
        label.text = array[number]
    }
    
    @IBAction func backPressed() {
        if number == 0 {
            number = 2
        } else {
            number -= 1
        }
        label.text = array[number]
    }
    
    @IBAction func firstPressed() {
        number = 0
        label.text = array[number]
    }
    
    @IBAction func secondPressed() {
        number = 1
        label.text = array[number]
    }
    
    @IBAction func thirdPressed() {
        number = 2
        label.text = array[number]
    }

}

