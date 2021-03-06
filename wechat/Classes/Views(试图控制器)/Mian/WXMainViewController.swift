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
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent     //状态栏字体改为白色

        setChild()
    }

}
extension WXMainViewController{
    func setChild(){
        let array = [["clsName":"WXMessageController","title":"微信","imageName":"mainframe"],
                     ["clsName":"WXFriendsController","title":"通讯录","imageName":"contacts"],["clsName":"WXDiscoverController","title":"发现","imageName":"discover"],["clsName":"WXProfileController","title":"我","imageName":"me"]]
        
        var arrayM = [UIViewController]()
        for dict in array{
            arrayM.append(controller(dict: dict))
        }
        
        viewControllers = arrayM
    }
    
    private func controller(dict: [String:String]) -> UIViewController{
        //取得字典内容
        guard let clsName = dict["clsName"],
        let title = dict["title"],
        let imageName = dict["imageName"],
        let cls = NSClassFromString("wechat."+clsName) as? UIViewController.Type
            else{
                return UIViewController()
        }
        //创建视图控制器
        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: "tabbar_" + imageName)
        vc.tabBarItem.selectedImage = UIImage(named: "tabbar_" + imageName + "HL")?.withRenderingMode(.alwaysOriginal) //渲染
        
        let nav = WXNavigationController(rootViewController: vc)
        nav.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : #colorLiteral(red: 0, green: 0.8078431373, blue: 0.1803921569, alpha: 1)], for: .highlighted) //设置字体高亮颜色
        
        return nav
        
    }
}
