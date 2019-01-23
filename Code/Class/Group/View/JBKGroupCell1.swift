//
//  JBKGroupCell1.swift
//  D4ME
//
//  Created by 杨广军 on 2019/1/8.
//  Copyright © 2019 maoziyue. All rights reserved.
//

import UIKit
import SnapKit

class JBKGroupCell1: UITableViewCell {

    var nameLabel: UILabel!
    var line: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.nameLabel = UILabel();
        self.contentView.addSubview(self.nameLabel);
        
        self.line = UIView();
        self.line.backgroundColor = UIColor.groupTableViewBackground
        self.contentView.addSubview(self.line)
        
        self.setupUI()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUI() {
        
        
        
        self.line.snp.makeConstraints { (make) in
            make.bottom.equalTo(0)
            make.left.right.equalTo(0)
            make.height.equalTo(1)
        }
  
        
        self.nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(20)
            make.height.equalTo(20)
            make.centerY.equalTo(self.contentView)
        }
        
        
    }
 
    
    
    
    
    
}
