//
//  JBKHomeController.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/7.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit
import Chrysan


class JBKHomeController: JBKBaseViewController ,UITableViewDelegate, UITableViewDataSource {


    var dataArray: NSMutableArray!
    var tbView: UITableView!
    var isCanLoading: Bool! = true // 默认可以
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        self.initData();
        self.configUI();
        self.loadData()
        
    }

    func initData() {
        
        self.dataArray = NSMutableArray();
    }
    
    func configUI() {
        let kScreenW = UIScreen.main.bounds.size.width
        let kScreenH = UIScreen.main.bounds.size.height;
        
        self.tbView = UITableView(frame: CGRect(x: 0, y: 64, width: kScreenW, height: kScreenH - 64 - 44), style: .plain)
        self.tbView.delegate = self
        self.tbView.dataSource = self
        self.tbView.rowHeight = 210;
        self.tbView.separatorStyle = .none;
        self.view.addSubview(self.tbView);
        
        self.tbView.register(UINib(nibName: "JBKHomeCell0", bundle: nil), forCellReuseIdentifier: "JBKHomeCell0")
    }
    
    
    
    func loadData() {
        self.chrysan.showMessage("加载中...")
        JBKHomeTool.loadHomeData(title: "0000个请求") { (res) in
           self.chrysan.hide()
            
            if res != nil {
                let code  = res?.code
                if code == 200 {
                    let home_list:Array<home_list_Data>? = res?.data?.home_list;
                    self.dataArray = NSMutableArray(array: home_list!);
                    self.tbView.reloadData();
                }
                else {
                    self.chrysan.show(.plain, message: "加载失败", hideDelay: 2.0)
                }
            }
        }
    }
    
    
    
    

    
    
    

    
    
    
}



//
extension JBKHomeController {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.dataArray.count;
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: JBKHomeCell0 = tableView.dequeueReusableCell(withIdentifier: "JBKHomeCell0") as! JBKHomeCell0
        let item = self.dataArray[indexPath.row] as? home_list_Data;
        cell.item = item;
        return cell;
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let item = self.dataArray[indexPath.row] as? home_list_Data;
        guard item?.post != nil else {
            return;
        }
        let content_url = item?.post?.content_url;
        let vc = JBKWebViewController()
        vc.url = content_url;
        self.navigationController?.pushViewController(vc, animated: true)
        
    
    }
    
    
    
    
    
    
    
    
    
    
//    // mark --歧视这么做好吗.
//
//    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        if decelerate == false {
//            self.reload();
//        }
//    }
//
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        self.reload();
//    }
//
//
//    func reload() {
//
//        if self.dataArray.count > 0 {
//            let visiblePaths: [IndexPath] = self.tbView.indexPathsForVisibleRows! as [IndexPath];
//            for indexPath in visiblePaths {
//                let  item = self.dataArray[indexPath.row] as? home_list_Data;
//                let cell: JBKHomeCell0 = self.tbView.cellForRow(at: indexPath as IndexPath) as! JBKHomeCell0;
//                cell.item = item;
//            }
//        }
//    }
    
    


    
    
    
    
    
    
    
    
    
}





