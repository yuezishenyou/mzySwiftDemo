//
//  BaseResponse.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/7.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit
import HandyJSON


//------------------------------------------------------------------------------------
//--MARK 基础模型
//------------------------------------------------------------------------------------
enum ResponseCode : Int, HandyJSONEnum {
    case success = 0
    case fail = 1
    case logout = 10504
}


class BaseResponse: HandyJSON {
    
    var code: Int?
    var msg: String?
    //var data : T?
    
    required init() {}
}





//------------------------------------------------------------------------------------
//--MARK 业务模型
//------------------------------------------------------------------------------------










