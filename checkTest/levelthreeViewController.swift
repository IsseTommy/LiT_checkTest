//
//  levelthreeViewController.swift
//  checkTest
//
//  Created by Tommy on 2019/04/14.
//  Copyright © 2019 Tommy. All rights reserved.
//

import UIKit

class levelthreeViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    let array = ["iPhone", "iPad", "Apple Watch"]
    let imageArray = ["1", "2", "3"]
    
    var number = 0
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = array[number]
        imageView.image = UIImage(named: imageArray[number])
    }
    
    @IBAction func leftSwiped() {
        if number == 0 {
            number = 2
        } else {
            number -= 1
        }
        label.text = array[number]
        imageView.image = UIImage(named: imageArray[number])
    }
    
    @IBAction func rightSwiped() {
        if number == 2 {
            number = 0
        } else {
            number += 1
        }
        label.text = array[number]
        imageView.image = UIImage(named: imageArray[number])
    }

}
