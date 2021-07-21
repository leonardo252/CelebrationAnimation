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

        let logger = HelloLogger()
        logger.hello(withText: "Leo e Mateus")
        logger.notHelloText("Leo e Mateus")
        
    }

    
}

