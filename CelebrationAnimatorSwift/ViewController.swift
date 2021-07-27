//
//  ViewController.swift
//  CelebrationAnimatorSwift
//
//  Created by Leonardo Gomes on 21/07/21.
//

import UIKit
import CelebrationAnimatorFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let animator = CelebrationAnimator(self.view)
        animator.startAnimation(["conffeti"])
        
    }

    
}

