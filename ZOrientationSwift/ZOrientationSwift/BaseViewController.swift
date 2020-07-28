//
//  BaseViewController.swift
//  ZOrientationSwift
//
//  Created by zhangmingfei on 2020/7/29.
//  Copyright © 2020 com.zmfflying. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    ///强制横屏
    func forceOrientationLandscape() {
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        appdelegate.isForceLandscape = true
        appdelegate.isForcePortrait = false
        appdelegate.application(UIApplication.shared, supportedInterfaceOrientationsFor: self.view.window)
        
        //强制翻转屏幕，Home键在右边。
        UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
        //刷新
        UIViewController.attemptRotationToDeviceOrientation()
        
    }
    
    ///强制竖屏
    func forceOrientationPortrait() {
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        appdelegate.isForceLandscape = false
        appdelegate.isForcePortrait = true
        appdelegate.application(UIApplication.shared, supportedInterfaceOrientationsFor: self.view.window)
        
        //强制翻转屏幕，Home键在右边。
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
        //刷新
        UIViewController.attemptRotationToDeviceOrientation()
        
    }
    
}
