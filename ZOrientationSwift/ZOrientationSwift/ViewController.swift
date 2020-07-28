//
//  ViewController.swift
//  ZOrientationSwift
//
//  Created by zhangmingfei on 2020/7/29.
//  Copyright © 2020 com.zmfflying. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.title = "12123"
        
        let goBtn = UIButton.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 100))
        goBtn.backgroundColor = UIColor.black
        goBtn.setTitle("go", for: .normal)
        goBtn.addTarget(self, action: #selector(goBtnClicked), for: .touchUpInside)
        self.view.addSubview(goBtn)
    }

    @objc func goBtnClicked() {
        self.navigationController?.pushViewController(TestViewController.init(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 强制竖屏
        forceOrientationPortrait()
    }
    
    // 设置横屏方向
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        // 横屏 home键在右
        return .portrait
    }

}

