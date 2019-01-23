//
//  JBKHomeTool.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/7.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit
import HandyJSON

class JBKHomeTool: NSObject {

    
    class func loadHomeData(title: String?, block:@escaping(_ item: JBKHomeEntity?) -> Void) {
        

        
        let url = kBASEUEL + "/v2/home/0"
        
        HttpTool.share.request(url: url, method: .get, params: nil) { (value, error) in
            if error == nil {
                //DDLogIn("------value:\(value)--------")
                let dict = value as! [String : Any]
                if let obj = JSONDeserializer<JBKHomeEntity>.deserializeFrom(dict: dict) {
                    block(obj);
                }
                else {
                    block(nil);
                }
            }
            else {
                block(nil);
            }
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
}







