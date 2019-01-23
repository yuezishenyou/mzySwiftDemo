//
//  JBKHomeEntity.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/7.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit
import HandyJSON


class JBKHomeEntity: HandyJSON {
    
    var code: Int?
    var message: String?
    var data: HomeEntityData?

    required init() {
    }
}

// class 和 struct 有区别
class HomeEntityData: HandyJSON {
    
    var current_time: Int?
    var next_url: String?
    var home_list: Array<home_list_Data>?
    
    required init() {
        
    }
}


class home_list_Data: HandyJSON {
    
    var cell_type: String?
    
    var banners: Array<bannersItem>? //
    var post : Post?   //
    
    
    required init() {
    }
}


class bannersItem: HandyJSON {
    
    var id: Int?
    var image_url: String?
    var order: Int?
    var status: Int?
    var target_id: Int?
    var target_url: String?
    var type: String?
    
    var target: Any? //
    
    required init() {}
}

class Post: HandyJSON {
    
    var id: Int?
    var channel_icon: String?
    var channel_id: Int?
    var channel_title: String?
    var comments_count: Int?
    var content_url: String?
    var cover_image_url: String?
    var created_at: Int?
    var is_show_items: Bool?
    var liked: Bool?
    var likes_count: Int?
    var new_cover_image_url: String?
    var old_cover_image_url: String?
    var published_at: String?
    var share_msg: String?
    var shares_count: Int?
    var short_title: String?
    var show_words: Bool?
    var status: Int?
    var title: String?
    var title_status: Int?
    var updated_at: Int?
    var url: String?
    
    required init() {}
}










