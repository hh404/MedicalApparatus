//
//  ProductListTCell.swift
//  MedicalApparatus
//
//  Created by huangjianwu on 2018/5/25.
//  Copyright © 2018年 huangjianwu. All rights reserved.
//

import UIKit
import SnapKit
import Kingfisher

class ProductListTCell: UITableViewCell {
    let productImageView = UIImageView()
    let productTitleLabel = UILabel()
    let productSubTitleLabel = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(productImageView)
        productImageView.snp.makeConstraints { (make) in
            make.left.equalTo(AppUIConstant.Common.leftMargin)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(AppUIConstant.Home.imageSize)
        }
        
        self.contentView.addSubview(productTitleLabel)
        productTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(AppUIConstant.Home.titleTopSpace)
            make.left.equalTo(productImageView.snp.right).offset(AppUIConstant.Home.titleLeftSpace)
        }
        
        self.contentView.addSubview(productSubTitleLabel)
        productSubTitleLabel.textColor = UIColor.gray
        productSubTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(productTitleLabel.snp.bottom).offset(AppUIConstant.Home.subTitleTopSpace)
            make.left.equalTo(productImageView.snp.right).offset(AppUIConstant.Home.titleLeftSpace)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureWithData(_ data:ProductSubCategory,productCategoryName:String) {
        productImageView.kf.setImage(with: URL(string: data.url))
        productTitleLabel.text = productCategoryName + "|" + data.productSubCategoryName
        productSubTitleLabel.text = data.detail
    }

}
