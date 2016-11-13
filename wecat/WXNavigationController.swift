//
//  WXNavigationController.swift
//  wecat
//
//  Created by Ashley on 16/11/13.
//  Copyright © 2016年 Ashley. All rights reserved.
//

import UIKit

class WXNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.barTintColor = #colorLiteral(red: 0.2274509804, green: 0.2235294118, blue: 0.2470588235, alpha: 1) //状态栏颜色
        self.navigationBar.tintColor = UIColor.white    //左右按钮颜色
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]    //修改标题颜色
    }


}
