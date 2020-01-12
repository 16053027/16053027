//
//  ViewController.swift
//  Birdstriker
//
//  Created by fi17aac on 12/01/2020.
//  Copyright © 2020 fi17aac. All rights reserved.
//

import UIKit

protocol subviewDelegate {
    func changeSomething()
}

class ViewController: UIViewController, subviewDelegate {
    
    func changeSomething() {
        
    }
    
    @IBOutlet weak var targetview: DragImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        targetview.myDelegate = self
    }
override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }


    }



