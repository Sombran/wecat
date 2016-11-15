//
//  WXMessageController.swift
//  wecat
//
//  Created by Ashley on 16/11/13.
//  Copyright © 2016年 Ashley. All rights reserved.
//

import UIKit

private let cellId = "cellId"
class WXMessageController: WXBaseViewController {

    lazy var dataList = [String]()
    
    @objc func add(){
        print("添加")
    }
    override func loadData() {
        for i in 0..<10 {
            dataList.insert("\(i)", at: 0)
        }
    }
}
//实现数据源
extension WXMessageController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = dataList[indexPath.row]
        return cell
    }
}

//设置UI
extension WXMessageController{
    override func setUI() {
        super.setUI()
        let img = UIImage(named: "barbuttonicon_add")?.withRenderingMode(.alwaysOriginal)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(add))
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
}
