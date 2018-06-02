//
//  StartupQuizViewController.swift
//  ContainerViewPrac
//
//  Created by 주호박 on 2018. 6. 2..
//  Copyright © 2018년 주호박. All rights reserved.
//

import UIKit

class StartupQuizViewController: UIViewController {

    weak var delegate:ScoreDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func didPushOKButton(_ sender: UIButton) {
        
        delegate?.addOneToScore()
    }
    

}
