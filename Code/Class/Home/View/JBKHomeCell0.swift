//
//  JBKHomeCell0.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/8.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit
import Kingfisher


class JBKHomeCell0: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageV: UIImageView!

    
    var item: home_list_Data? {
        didSet {
            
            if item != nil {
                self.nameLabel.text = item?.post?.title;

                guard item?.post != nil else {
                    return;
                }
                
                let str = item?.post?.cover_image_url;
                
                guard let url = URL(string: str!) else {
                    return;
                }
                
                let resource = ImageResource(downloadURL: url, cacheKey: nil);
                self.imageV.kf.setImage(with: resource, placeholder: UIImage(named: "apc"), options: nil, progressBlock: nil, completionHandler: nil);
            }
            else {
                self.nameLabel.text = "";
                self.imageV.image = nil;
            }
            


     
        }
    }
    


    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    
    
    
    
}
