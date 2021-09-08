//
//  ViewController.swift
//  TimerGradient
//
//  Created by UrataHiroki on 2021/09/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(changeGradient), userInfo: nil, repeats: true)
        
    }

    @objc func changeGradient(){
        
        UIView.animate(withDuration: 2.0, animations: {
            
            self.view.backgroundColor = UIColor(red: CGFloat.random(in: 0...255) / 255,
                                                                        green: CGFloat.random(in: 0...255) / 255,
                                                                        blue: CGFloat.random(in: 0...255) / 255,
                                                                        alpha: CGFloat.random(in: 0.0...1.0))
            
        })
    }

}

