//
//  ViewController.swift
//  Alien View
//
//  Created by D7703_03 on 2018. 4. 3..
//  Copyright © 2018년 D7703_03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    var chk = true
    
    @IBOutlet weak var alienImageView: UIImageView!
    @IBOutlet weak var lblCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        alienImageView.image = UIImage(named: "frame1.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateImage(_ sender: Any) {
        if counter == 5 {
            chk = false
           counter = counter - 1
        } else if counter == 1 {
            chk = true
            counter = counter + 1
        } else if chk == false {
            counter = counter - 1
        } else if chk == true {
            counter = counter + 1
        }
        alienImageView.image = UIImage(named: "frame\(counter).png")
        lblCount.text = "\(counter)"
    }
}

