//
//  HotViewController.swift
//  MedicalApparatus
//
//  Created by huangjianwu on 2018/5/27.
//  Copyright © 2018年 huangjianwu. All rights reserved.
//

import UIKit
import FSPagerView
import SnapKit
import SwiftyJSON
import Kingfisher
import XLPagerTabStrip
import UIColor_Hex_Swift

class HotViewController: UIViewController,IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return self.itemInfo
    }
    
    let tableView: UITableView = UITableView(frame: .zero, style: .plain)
    var pagerView: FSPagerView = FSPagerView(frame: .zero)
//    {
//        didSet {
//
//            self.pagerView.itemSize = .zero
//        }
//    }
    var itemInfo = IndicatorInfo(title: "View")
    var response:ProductDetailResponse?
    var pageControl: FSPageControl =  FSPageControl(frame: .zero)
//    {
//        didSet {
//            if let re = response{
//                self.pageControl.numberOfPages = re.contents.products.count
//            }
//            self.pageControl.contentHorizontalAlignment = .right
//            self.pageControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
//        }
//    }
    
    init(itemInfo: IndicatorInfo) {
        self.itemInfo = itemInfo
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableView)
        self.initData()
        self.view.addSubview(pagerView)
        self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.automaticSlidingInterval = 2.0
        pageControl.setStrokeColor((UIColor("#00BFFF")), for: .selected)
        pagerView.snp.makeConstraints { (make) in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(200)
        }
  
        pagerView.addSubview(pageControl)
        pageControl.snp.makeConstraints { (make) in
            make.left.bottom.right.equalToSuperview()
            make.height.equalTo(22)
        }
        
        if let re = response{
            self.pageControl.numberOfPages = re.contents.products.count
        }
        self.pageControl.contentHorizontalAlignment = .right
        self.pageControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        pagerView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func initData()  {
        if let url = Bundle.main.url(forResource: "", withExtension: "json"){
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
}

extension HotViewController:UITableViewDataSource,UITableViewDelegate,FSPagerViewDelegate,FSPagerViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        return cell!
    }
    
    // MARK:- UITableViewDelegate
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return indexPath.section == 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
    
    // MARK:- FSPagerView DataSource
    
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        if let re = response{
            return (re.contents.products.count)
        }
        return 0
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        if let re = response{
            cell.imageView?.kf.setImage(with: URL(string: re.contents.products[index].url))
        }
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.clipsToBounds = true
//        cell.textLabel?.text = index.description+index.description
        return cell
    }
    
    // MARK:- FSPagerView Delegate
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        pagerView.deselectItem(at: index, animated: true)
        pagerView.scrollToItem(at: index, animated: true)
        self.pageControl.currentPage = index
    }
    
    func pagerViewDidScroll(_ pagerView: FSPagerView) {
        guard self.pageControl.currentPage != pagerView.currentIndex else {
            return
        }
        self.pageControl.currentPage = pagerView.currentIndex // Or Use KVO with property "currentIndex"
    }
    
    
    
}
