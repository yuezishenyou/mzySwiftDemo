//
//  JBKTabBarController.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/7.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit

class JBKTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        self.configChildController(vc: JBKHomeController(), title: "首页", image: nil, selectedImage: nil);
        
        self.configChildController(vc: JBKGroupController(), title: "分类" , image: nil, selectedImage: nil)
        
        self.configChildController(vc: JBKOwnController(), title: "我的", image: nil, selectedImage: nil)
        
        
        
    }
    


    func configChildController(vc: UIViewController, title:String?, image:UIImage?, selectedImage: UIImage? ) {
        
    
        let navc = UINavigationController(rootViewController: vc);
        
        navc.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: selectedImage);
        
        vc.navigationItem.title = title;
        
        self.addChild(navc)
        
    }
    
    
    
    
    
    
    
    
    

}
