//
//  ProductDetailTCell.swift
//  MedicalApparatus
//
//  Created by huangjianwu on 2018/5/25.
//  Copyright © 2018年 huangjianwu. All rights reserved.
//

import UIKit
import Kingfisher

class ProductDetailTCell: UITableViewCell {
let productImageView = UIImageView()
    let productTitleLabel = UILabel()
    let productDetailLabel = UILabel()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(productImageView)
        productImageView.snp.makeConstraints { (make) in
            make.left.top.equalTo(AppUIConstant.Common.leftMargin)
            make.right.equalTo(-AppUIConstant.Common.leftMargin)
            make.height.equalTo(200)
        }
        
        self.contentView.addSubview(productTitleLabel)
        productTitleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(productImageView.snp.bottom).offset(10)
        }
        
        self.contentView.addSubview(productDetailLabel)
        productDetailLabel.numberOfLines = 0
        productDetailLabel.textAlignment = .center
        productDetailLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(productTitleLabel.snp.bottom).offset(10)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureWithData(_ model:Product)  {
        self.productImageView.kf.setImage(with: URL(string: model.url))
        self.productTitleLabel.text = model.title
        self.productDetailLabel.text = model.detail
    }

}
