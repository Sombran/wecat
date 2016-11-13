//
//  WXMessageController.swift
//  wecat
//
//  Created by Ashley on 16/11/13.
//  Copyright © 2016年 Ashley. All rights reserved.
//

import UIKit

class WXMessageController: WXBaseViewController {

    @objc func add(){
        print("添加")
    }
}
extension WXMessageController{
    override func setUI() {
        super.setUI()
        let img = UIImage(named: "barbuttonicon_add")?.withRenderingMode(.alwaysOriginal)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(add))
    }
}
