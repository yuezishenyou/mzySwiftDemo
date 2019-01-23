//
//  Common.swift
//  swiftProject
//
//  Created by 杨广军 on 2018/12/27.
//  Copyright © 2018 maoziyue. All rights reserved.
//

import UIKit

class Common: NSObject {

}

func DDLog<T>(_ items : T, file : String = #file ,funcName : String = #function, lineNum : Int = #line ) {
    
    #if DEBUG
    
    let fileName = (file as NSString).lastPathComponent
    
    print("\n")
    print("=================================================================")
    print("文件名: \(fileName)")
    print("函数名: \(funcName)")
    print("行号:   \(lineNum)")
    print("打印:   \(items)")
    print("=================================================================")
    print("\n")
    
    //print("\(fileName):(\(lineNum))-\(items)")
    
    #endif
}


func DDLogIn<T>(_ items : T, file : String = #file ,funcName : String = #function, lineNum : Int = #line ) {
    
    #if DEBUG
    
    //let fileName = (file as NSString).lastPathComponent
    
    print("打印: \(items)")
    
    #endif
}
