//
//  ViewController.swift
//  ContainerViewPrac
//
//  Created by 주호박 on 2018. 6. 2..
//  Copyright © 2018년 주호박. All rights reserved.
//
import UIKit

class BaseViewController: UIViewController {
    var scoreVC:ScoreViewController?
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // UITabBarController가 목적지면 아래의 로직을 수행
        if let baseTabBarVC = segue.destination as? UITabBarController {
            if let firstTab = baseTabBarVC.viewControllers?.first as? StartupQuizViewController {// 첫번째 VC가 StartupQuizViewController일때.. 이런식의 표현은 봤던거 같기도 하고 안본거 같기도 한데 일단 유용할것 같다.
                firstTab.delegate = self
            }
            if let secondTab = baseTabBarVC.viewControllers?[1] as? SecondQuizViewController {
                secondTab.delegate = self
            }
        }// 탭바 위임 끝.
        if let vc = segue.destination as? ScoreViewController {
            scoreVC = vc
        }// 이 타입캐스팅 바인딩? 이 독특한데 결론적으로 BaseViewController는 자신의 루트뷰 안에 포함되는 Container 뷰컨트롤러를 프로퍼티로 포함시 킬 수 있고, 이 바인딩을 통해 세그로 넘어가는 뷰컨을 표현 및 사용이 가능하도록 한다.
    }
}


extension BaseViewController: ScoreDelegate {
    func addOneToScore() {
        print("score to be updated")
        scoreVC?.updatedScore()// 결론적으로 이렇게 되면 탭바의 포함되는 1,2 뷰컨에서 위임을 부모에게 하고,
        // 스코어 뷰에서는 자기 자신을 부모에게 위임시켜서 자신의 메소드를 부모에서 실행 시킬수 있게끔 한다.
        // 위임 -> 위임 -> 위임 이런느낌.
        // 거꿀로 생각해보면 호출 호출 호출 이런느낌이기도 하네
        print("호출?")
    }
}

