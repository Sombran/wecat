//
//  WXFriendsController.swift
//  wecat
//
//  Created by Ashley on 16/11/13.
//  Copyright © 2016年 Ashley. All rights reserved.
//

import UIKit

class WXFriendsController: WXBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @objc func addFriend(){
        let vc = WXDomeController()
        vc.title = "添加朋友"
        
        vc.hidesBottomBarWhenPushed = true      //push时隐藏tabBar
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension WXFriendsController{
    override func setUI() {
        super.setUI()

        let img = UIImage(named:"contacts_add_friend")?.withRenderingMode(.alwaysOriginal)

        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(addFriend))
    }
}
