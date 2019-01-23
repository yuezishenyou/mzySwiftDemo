//
//  JBKWebViewController.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/8.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit
import WebKit


class JBKWebViewController: JBKBaseViewController {

    var url: String?
    
    var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configUI();
        
        self.loadData();
        
        
    }

    
    func configUI() {
        
        let kScreenW = UIScreen.main.bounds.size.width
        let kScreenH = UIScreen.main.bounds.size.height
        
        
        
        //创建wkwebview
        self.webView = WKWebView(frame: CGRect(x: 0, y: 0, width: kScreenW, height: kScreenH))
        
        self.view.addSubview(self.webView)
        
        
    
        
        
    }

    func loadData() {
        
        guard self.url != nil else {
            return;
        }
        
        let url = NSURL(string: self.url!)
        
        let request = NSURLRequest(url: url! as URL)
        
        self.webView.load(request as URLRequest);
  
    }
    
    

}
