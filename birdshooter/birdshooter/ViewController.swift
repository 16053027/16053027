//
//  ViewController.swift
//  birdshooter
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
    
    @IBOutlet weak var targetview: Dragimageview!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        targetview.myDelegate = self
        
        let ballview = UIImageView(image: nil)
        
        ballview.image = UIImage(named: "ball.png")
        
        ballview.frame = CGRect(x:100, y: 100, width: 30, height: 50)
        
        self.view.addSubview(ballview)
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()

}

}

