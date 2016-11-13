//
//  WXMainViewController.swift
//  wecat
//
//  Created by Ashley on 16/11/13.
//  Copyright © 2016年 Ashley. All rights reserved.
//

import UIKit

class WXMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setChild()
    }

}
extension WXMainViewController{
    func setChild(){
        let array = [["clsName":"WXMessageController","title":"微信","imageName":""],
                     ["clsName":"WXFriendsController","title":"通讯录","imageName":""],["clsName":"WXDiscoverController","title":"发现","imageName":""],["clsName":"WXProfileController","title":"我","imageName":""]]
        
        var arrayM = [UIViewController]()
        for dict in array{
            arrayM.append(controller(dict: dict))
        }
        
        viewControllers = arrayM
    }
    
    private func controller(dict: [String:String]) -> UIViewController{
        guard let clsName = dict["clsName"],
        let title = dict["title"],
        let imageName = dict["imageName"],
        let cls = NSClassFromString("wecat."+clsName) as? UIViewController.Type
            else{
                return UIViewController()
        }
        
        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageName)
        
        let nav = WXNavigationController(rootViewController: vc)
        
        return nav
        
    }
}
