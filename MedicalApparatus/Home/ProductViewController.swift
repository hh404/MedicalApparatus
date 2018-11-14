//
//  ProductViewController.swift
//  MedicalApparatus
//
//  Created by huangjianwu on 2018/5/24.
//  Copyright © 2018年 huangjianwu. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import SnapKit
import Kingfisher
import SwiftyJSON

enum ProductType :String {
    case hot = "Category(hot)"
    case bed = "Category(bed)"
    case cart = "Category(cart)"
    case showcase = "Category(showcase)"
    case chair = "Category(chair)"
    case other = "Category(other)"
}

class ProductViewController: UIViewController,IndicatorInfoProvider,UITableViewDataSource,UITableViewDelegate {

    let cellIdentifier = "postCell"
    var blackTheme = false
    var itemInfo = IndicatorInfo(title: "View")
    var response: ProductCategoryResponse?
    var productType :ProductType = .bed
    var tableView = UITableView(frame: .zero, style: .plain)
    
    init(style: UITableViewStyle, itemInfo: IndicatorInfo) {
        self.itemInfo = itemInfo
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        tableView.register(ProductListTCell.self, forCellReuseIdentifier: cellIdentifier)
//        tableView.estimatedRowHeight = AppUIConstant
        tableView.rowHeight = CGFloat(AppUIConstant.Home.itemHeight)
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.allowsSelection = false
        if blackTheme {
            tableView.backgroundColor = UIColor(red: 15/255.0, green: 16/255.0, blue: 16/255.0, alpha: 1.0)
        }
        tableView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(AppUIConstant.Common.navigatorHeight)
        }
        if #available(iOS 11, *) {
            // iOS 8 及其以上系统运行
            //            self.navigationController?.additionalSafeAreaInsets = UIEdgeInsetsMake(-20, 0, 0, 0)
            self.tableView.contentInsetAdjustmentBehavior = .never
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.initData()
    }
    
    override func viewDidLayoutSubviews() {
//        var frame = self.view.frame
//        frame.origin.y = 64
//        frame.size.height = UIScreen.main.bounds.height - 64 - 48
//        self.view.frame = frame

    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let re = response{
            return (re.contents.productSubCategory.count)
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProductListTCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ProductListTCell
//            let data = DataProvider.sharedInstance.postsData.object(at: indexPath.row) as? NSDictionary else { return PostCell() }
        
//        cell.configureWithData(data)
//        if blackTheme {
//            cell.changeStylToBlack()
//        }
        let pc = response?.contents.productSubCategory[indexPath.row]
//        cell.textLabel?.text = pc?.productSubCategoryName
//        cell.detailTextLabel?.text = pc?.detail
//        let url = URL(string: (pc?.url)!)
//        cell.imageView?.kf.setImage(with: url)
        cell.configureWithData(pc!,productCategoryName: (response?.contents.productCategoryName)!)
        return cell
    }
    
    // MARK: - IndicatorInfoProvider
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }

    func initData()  {
        if let url = Bundle.main.url(forResource: self.productType.rawValue, withExtension: "json"){
            do{
                let data = try Data(contentsOf: url)
                let json = try JSON(data: data)
                response = ProductCategoryResponse.init(fromJson: json)
                self.tableView.reloadData()
                
            }
            catch{
                
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pc = response?.contents.productSubCategory[indexPath.row]
        let vc = ProductDetailViewController((response?.contents.productCategoryID)!, subCategory: (pc?.productSubCategoryID)!)
        vc.title = pc?.productSubCategoryName
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 88
//    }
}
