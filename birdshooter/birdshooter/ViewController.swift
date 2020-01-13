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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
        
        targetview.myDelegate = self
        
        let ball = UIImageView(image: nil)
        
        ball.image = UIImage(named: "ball.png")
        
        ball.frame = CGRect(x:100, y: 100, width: 30, height: 50)
        
         self.view.addSubview(ball)
   
        
        let bird = UIImageView(image: nil)
        
        bird.image = UIImage(named:"bird1.png")
        
        bird.frame = CGRect(x:110, y:550, width: 50, height:70)
        
         self.view.addSubview(bird)
        
        
         dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
                      
        gravityBehavior = UIGravityBehavior(items: [ball])
        dynamicAnimator.addBehavior(gravityBehavior)
                      
    collisionBehavior = UICollisionBehavior(items: [ball])
    collisionBehavior.translatesReferenceBoundsIntoBoundary = true
    dynamicAnimator.addBehavior(collisionBehavior)
                      
       
collisionBehavior.addBoundary(withIdentifier: "barrier" as NSCopying,
        for: UIBezierPath(rect: bird.frame))
    
        
        
        
    }
    override func didReceiveMemoryWarning() {
    
        super.didReceiveMemoryWarning()

}

}

