//
//  JBKOwnCell2.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/15.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit

class JBKOwnCell2: UITableViewCell {

    @IBOutlet weak var collectionV: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.collectionV.backgroundColor = UIColor.yellow
        
        configUI();
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configUI() {
        
    }
    
    
    
    
    
    
}
