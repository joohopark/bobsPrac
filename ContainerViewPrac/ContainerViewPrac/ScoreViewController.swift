//
//  ScoreViewController.swift
//  ContainerViewPrac
//
//  Created by 주호박 on 2018. 6. 2..
//  Copyright © 2018년 주호박. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLB: UILabel!
    var score = 0
    
    func updatedScore(){
        score = score + 1
        scoreLB.text = String(score)
        print(score)
    }

}
