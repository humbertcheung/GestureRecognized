//
//  ViewController.swift
//  GestureRecognized
//
//  Created by HumbertCheung on 2018/9/21.
//  Copyright © 2018年 Humbert Cheung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myView: UIView?
    var anotherView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView = UIView(frame: CGRect(x: 50, y: 100, width: 100, height: 100))
        myView!.backgroundColor = UIColor.purple
        self.view.addSubview(myView!)
        myView?.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(panGestureOperation)))
        
        anotherView = UIView(frame: CGRect(x: 50, y: 250, width: 100, height: 100))
        anotherView?.backgroundColor = UIColor(red: 91/255.0, green: 166/255.0, blue: 117/255.0, alpha: 1.0)
        self.view.addSubview(anotherView!)
        anotherView?.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(longPressOperation)))
    }
    
    @objc func panGestureOperation(panGesture: UIPanGestureRecognizer) {
        //获取拖动时手势在view中的位置
        let location = panGesture.location(in: self.view)
        //将myView的center设置为手势的位置，这样就可以跟随手势移动了
        myView?.center = location
        
    }

    @objc func longPressOperation(gesture: UILongPressGestureRecognizer) {
        gesture.minimumPressDuration = 2
        print("LongPressGesture")
    }
}

