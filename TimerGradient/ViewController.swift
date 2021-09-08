//
//  ViewController.swift
//  TimerGradient
//
//  Created by UrataHiroki on 2021/09/08.
//

import UIKit

class ViewController: UIViewController {

    var gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradient.frame = CGRect(x: self.view.frame.minX, y: self.view.frame.minY, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        Timer.scheduledTimer(timeInterval: 4, target: self, selector: #selector(changeGradient), userInfo: nil, repeats: true)
        
    }

    @objc func changeGradient(){
        
        UIView.animate(withDuration: 2,delay: 0,options: .allowUserInteraction ,animations: {[self] in
            
            gradient.colors = [
                
                UIColor(red: CGFloat.random(in: 0...255) / 255,
                        green:CGFloat.random(in:0...255) / 255,
                        blue: CGFloat.random(in: 0...255) / 255,
                        alpha: CGFloat.random(in: 0.0...1.0)).cgColor,
                UIColor(red: CGFloat.random(in: 0...255) / 255,
                        green:CGFloat.random(in: 0...255) / 255,
                        blue: CGFloat.random(in: 0...255) / 255,
                        alpha: CGFloat.random(in: 0.0...1.0)).cgColor
            ]
            
            gradient.startPoint = CGPoint(x: 0.5, y: 0.5)
            gradient.endPoint = CGPoint(x: 0.5, y: 0)
            self.view.layer.insertSublayer(gradient, at: 0)
                
        },completion: nil)
    }

}

