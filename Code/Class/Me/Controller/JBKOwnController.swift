//
//  JBKOwnController.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/7.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit

class JBKOwnController: JBKBaseViewController {

    @IBOutlet weak var tbView: UITableView!
    
    var dataArray: NSMutableArray?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 轮播图
        //https://blog.csdn.net/mr_banma/article/details/78855494
        
        
        self.view.backgroundColor = UIColor.groupTableViewBackground
        
 
        self.initData();
        
        self.configUI();
        
    }

    
    
    
    func initData() {
       
        self.dataArray = NSMutableArray();
        
        self.dataArray?.add("0000");
        self.dataArray?.add("1111");
        self.dataArray?.add("2222");
        self.dataArray?.add("3333");
    }
    
    
    func configUI() {
        
        self.tbView.delegate = self;
        self.tbView.dataSource = self;
        self.tbView.separatorStyle = .none;
        self.tbView.rowHeight = 80;
        self.tbView.backgroundColor = UIColor.groupTableViewBackground;
        
        
        self.tbView.register(UINib(nibName: "JBKOwnCell0", bundle: nil), forCellReuseIdentifier: "JBKOwnCell0");
        self.tbView.register(UINib(nibName: "JBKOwnCell1", bundle: nil), forCellReuseIdentifier: "JBKOwnCell1");
        self.tbView.register(UINib(nibName: "JBKOwnCell2", bundle: nil), forCellReuseIdentifier: "JBKOwnCell2");
        self.tbView.register(UINib(nibName: "JBKOwnCell3", bundle: nil), forCellReuseIdentifier: "JBKOwnCell3");
    }
    
    
}

extension JBKOwnController: UITableViewDelegate,UITableViewDataSource {
    

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let row = indexPath.row
        if row == 0 {
            return 80;
        }
        else if row == 1 {
            return 120;
        }
        else if row == 2 {
            return 180;
        }
        return 0;
    }
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = self.dataArray?.count;
        return count!;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        if row == 0 {
            let cell:JBKOwnCell0 = tableView.dequeueReusableCell(withIdentifier: "JBKOwnCell0") as! JBKOwnCell0;
            return cell;
        }
        else if row == 1 {
            let cell:JBKOwnCell1 = tableView.dequeueReusableCell(withIdentifier: "JBKOwnCell1") as! JBKOwnCell1;
            return cell;
        }
        else if row == 2 {
            let cell:JBKOwnCell2 = tableView.dequeueReusableCell(withIdentifier: "JBKOwnCell2") as! JBKOwnCell2;
            return cell;
        }
        else if row == 3 {
            let cell:JBKOwnCell3 = tableView.dequeueReusableCell(withIdentifier: "JBKOwnCell3") as! JBKOwnCell3;
            return cell;
        }
        return UITableViewCell.init();
    }
    
    
    
}








