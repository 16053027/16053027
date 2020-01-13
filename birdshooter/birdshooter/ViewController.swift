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
    var collisionBehavior: UICollisionBehavior!
    var gravityBehavior: UIGravityBehavior!
    
     func changeSomething() {
    }
    
    @IBOutlet weak var targetview: Dragimageview!
    @IBOutlet weak var ball1: UIImageView!
    @IBOutlet weak var ball2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        targetview.myDelegate = self
        
        let ball = UIImageView(image: nil)
        
        ball.image = UIImage(named: "ball.png")
        
        ball.frame = CGRect(x:100, y: 100, width: 30, height: 50)
        
         self.view.addSubview(ball)
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        gravityBehavior = UIGravityBehavior(items: [ball1])
        dynamicAnimator.addBehavior(gravityBehavior)
        
        collisionBehavior = UICollisionBehavior(items: [ball1, ball2])
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        dynamicAnimator.addBehavior(collisionBehavior)
        
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()

}

}

