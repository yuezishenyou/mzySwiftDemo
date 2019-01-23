//
//  BaseRequest.swift
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

struct BaseParams : HandyJSON {
    
}

struct BaseProtocol : HandyJSON {
    var appkey: String?
    var channel: String?
    var lat: String?
    var lng: String?
    var os : String?
    var token: String?
    var ver: String?
}



class BaseRequest: HandyJSON {
    var `protocol` : BaseProtocol?
    
    required init() {}
}




//------------------------------------------------------------------------------------
//--MARK 业务模型
//------------------------------------------------------------------------------------







