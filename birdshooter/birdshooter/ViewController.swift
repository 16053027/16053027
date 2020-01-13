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
    
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehavior: UIDynamicItemBehavior!
    
     func changeSomething() {
    }
    
    @IBOutlet weak var targetview: Dragimageview!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        targetview.myDelegate = self
        
        let ball = UIImageView(image: nil)
        
        ball.image = UIImage(named: "ball.png")
        
        ball.frame = CGRect(x:100, y: 100, width: 30, height: 50)
        
         self.view.addSubview(ball)
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        dynamicItemBehavior = UIDynamicItemBehavior(items: [ball])
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: 120), for: ball)
        dynamicAnimator.addBehavior(dynamicItemBehavior)
        
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()

}

}

