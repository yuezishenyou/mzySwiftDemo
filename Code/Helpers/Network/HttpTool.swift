//
//  HttpTool.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/7.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit
import Alamofire

class HttpTool: NSObject {

    //单例
    static let share : HttpTool = {
        let tool = HttpTool();
        return tool;
    }()
}


extension HttpTool {
    
    // 请求接口
    func request(url: String, method:Alamofire.HTTPMethod, params: [String : Any]?, block:@escaping(_ res: Any?, _ error: Error?)->Void) {
        
        
        
        let headers: HTTPHeaders = [
            "Content-type" : "application/json",
        ]
        
        let manager = Alamofire.SessionManager.default
        manager.session.configuration.timeoutIntervalForRequest = 10
        
        //JSONEncoding.default
        manager.request(url, method: method, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            if response.result.isSuccess {
                let value = response.result.value;
                block(value,nil);
            }
            else {
                let error = response.result.error;
                block(nil,error);
                print("\n==============请求出错:\n\(error!)\n==============");
            }
        }
    }
    
    
    // 取消所有请求
    func cancelAllTasks()  {
        
        let manager = Alamofire.SessionManager.default;
        manager.session.getAllTasks { (tasks) in
            tasks.forEach({ (task) in
                task.cancel();
            })
        }
    }
    
    
    
    
}















