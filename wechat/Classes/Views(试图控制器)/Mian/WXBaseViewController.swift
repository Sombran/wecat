//
//  WXBaseViewController.swift
//  wecat
//
//  Created by Ashley on 16/11/13.
//  Copyright © 2016年 Ashley. All rights reserved.
//

import UIKit

class WXBaseViewController: UIViewController {
    //表格数据由具体子类实现
    var tableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        setUI()
        tableView?.dataSource = self
        tableView?.delegate = self
    }
    //加载数据，由子类实现
    func loadData(){
        
    }

}
extension WXBaseViewController{
    func setUI(){
        setupTableView()
    }
    func setupTableView(){
        tableView = UITableView(frame: view.bounds)
        view.addSubview(tableView!)
    }
}
//实现数据源方法，由子类实现，不需要super
extension WXBaseViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
