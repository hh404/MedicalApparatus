//
//  ProductDetailViewController.swift
//  MedicalApparatus
//
//  Created by huangjianwu on 2018/5/25.
//  Copyright © 2018年 huangjianwu. All rights reserved.
//

import UIKit
import SnapKit
import SwiftyJSON

class ProductDetailViewController: UIViewController {
    private var categoryID:String = ""
    private var subCategoryID:String = ""
    let tableView = UITableView(frame: .zero, style: .plain)
    var response:ProductDetailResponse?
    
    init(_ category:String,subCategory:String) {
        super.init(nibName: nil, bundle: nil)
        categoryID = category
        subCategoryID = subCategory
        self.hidesBottomBarWhenPushed = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        if #available(iOS 11, *) {
            // iOS 8 及其以上系统运行
            //            self.navigationController?.additionalSafeAreaInsets = UIEdgeInsetsMake(-20, 0, 0, 0)
            self.tableView.contentInsetAdjustmentBehavior = .never
        }
        tableView.rowHeight = 370
        tableView.register(ProductDetailTCell.self, forCellReuseIdentifier: "ProductDetailTCell")
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(AppUIConstant.Common.navigatorHeight)
        }
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.title = categoryID
        self.initData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initData()  {
        if let url = Bundle.main.url(forResource: "ProductDetail_"+self.categoryID+"_"+self.subCategoryID, withExtension: "json"){
            do{
                let data = try Data(contentsOf: url)
                let json = try JSON(data: data)
                response = ProductDetailResponse.init(fromJson: json)
                self.tableView.reloadData()
                
            }
            catch{
                
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension ProductDetailViewController: UITableViewDataSource{
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return (response?.contents.products.count)!
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let re = response{
            return (re.contents.products.count)
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ProductDetailTCell = tableView.dequeueReusableCell(withIdentifier: "ProductDetailTCell")! as! ProductDetailTCell
        let product = response?.contents.products[indexPath.row]
//        cell.textLabel?.text = product?.title
        cell.configureWithData(product!)
        return cell
    }
}
