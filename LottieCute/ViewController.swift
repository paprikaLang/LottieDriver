//
//  ViewController.swift
//  LottieCute
//
//  Created by paprika on 2017/8/26.
//  Copyright © 2017年 paprika. All rights reserved.
//

import UIKit
import Lottie
class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
            let animationView =  LOTAnimationView(name: "motorcycle")
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            
            animationView.loopAnimation = true
            animationView.contentMode = .scaleAspectFill
            animationView.animationSpeed = 0.5
            
            // Applying UIView animation
            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            animationView.transform = minimizeTransform
            UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
                animationView.transform = CGAffineTransform.identity
            }, completion: nil)
            
            view.addSubview(animationView)
            
            animationView.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

