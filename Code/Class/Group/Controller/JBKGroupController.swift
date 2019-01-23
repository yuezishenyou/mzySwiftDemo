//
//  JBKGroupController.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/7.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit

class JBKGroupController: JBKBaseViewController ,UITableViewDelegate,UITableViewDataSource {

    

    var tbView: UITableView!
    var dataArray: NSMutableArray!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        
        self.initData();
        
        self.configUI();
        
        self.loadData()
        
        
    }
    
    func initData()  {
        
        self.dataArray = NSMutableArray.init();
        for i in 0...19 {
            self.dataArray?.add(i);
        }
       
    }
    
    func configUI() {
    
        let kScreenW = UIScreen.main.bounds.size.width
        let kScrrenH =  UIScreen.main.bounds.size.height

    
        self.tbView = UITableView.init(frame: CGRect(x: 0, y: 64, width: kScreenW, height: kScrrenH - 64 - 44), style: .plain)
        self.tbView?.delegate = self;
        self.tbView?.dataSource = self;
        self.tbView.rowHeight = 60;
        self.tbView.separatorStyle = .none;
        self.view.addSubview(self.tbView!)
        
        
        self.tbView.register(UINib(nibName: "JBKGroupCell0", bundle: nil), forCellReuseIdentifier: "JBKGroupCell0")
        self.tbView.register(JBKGroupCell1.classForCoder(), forCellReuseIdentifier: "JBKGroupCell1")
        
    }
    
    
    func loadData() {
        DDLogIn("--分类-")
    }
    
    
    

    
}


// MARK ---------- tbView 代理
extension  JBKGroupController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = self.dataArray.count;
        return count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        if row < 10 {
            let cell: JBKGroupCell0! = tableView.dequeueReusableCell(withIdentifier: "JBKGroupCell0") as? JBKGroupCell0
            cell.nameLabel.text = "---\(self.dataArray[indexPath.row])---"
            return cell;
        }
        else {
            let cell: JBKGroupCell1! = tableView.dequeueReusableCell(withIdentifier: "JBKGroupCell1") as? JBKGroupCell1
            cell.nameLabel.text = "----abc----"
            return cell;
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
    
    
}
