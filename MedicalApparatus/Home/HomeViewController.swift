//
//  HomeViewController.swift
//  MedicalApparatus
//
//  Created by huangjianwu on 2018/5/24.
//  Copyright © 2018年 huangjianwu. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import SwiftyJSON
import UIColor_Hex_Swift

class HomeViewController: ButtonBarPagerTabStripViewController {

    let blueInstagramColor = UIColor(red: 37/255.0, green: 111/255.0, blue: 206/255.0, alpha: 1.0)
    var dataArray: [Content] = []

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(MTools.conventColorToImage(UIColor("#00BFFF")), for: .default)
    }
    
    
    override func viewDidLoad() {
        // change selected bar color
        self.title = "主页"
        self.view.backgroundColor = UIColor.white
        self.initData()
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = blueInstagramColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = self?.blueInstagramColor
        }
        super.viewDidLoad()
        if #available(iOS 11, *) {
            // iOS 8 及其以上系统运行
            //            self.navigationController?.additionalSafeAreaInsets = UIEdgeInsetsMake(-20, 0, 0, 0)
            self.containerView.contentInsetAdjustmentBehavior = .never
        }
        var frame = self.buttonBarView.frame
        frame.origin.y = AppUIConstant.Common.navigatorHeight
        self.buttonBarView.frame = frame
    }
    
    override func viewDidLayoutSubviews() {
  
    }
    // MARK: - PagerTabStripDataSource
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        var vcArray: [UIViewController] = []
        var index = 0
        for item in self.dataArray {
            
            if(index == 0){
                //vc.productType = .hot
                let vc = HotViewController(itemInfo: IndicatorInfo(title: item.productCategoryName))
                vcArray.append(vc)
            }
            else{
                let vc = ProductViewController(style: .plain, itemInfo: IndicatorInfo(title: item.productCategoryName))
                if(index == 1){
                    vc.productType = .bed
                }
                else if(index == 2){
                    vc.productType = .cart
                }
                else if(index == 3){
                    vc.productType = .showcase
                }
                else if(index == 4){
                    vc.productType = .chair
                }
                else if(index == 5){
                    vc.productType = .other
                }
                vcArray.append(vc)
            }
            
            index += 1
        }

        return vcArray
    }
    
    func initData()  {
        let content0 = Content(fromJson: JSON(Data()))
        content0.productCategoryName = "推荐"
        dataArray.append(content0)
        
        let content1 = Content(fromJson: JSON(Data()))
        content1.productCategoryName = "病床系列"
        dataArray.append(content1)
        
        let content2 = Content(fromJson: JSON(Data()))
        content2.productCategoryName = "推车系列"
        dataArray.append(content2)
        
        let content3 = Content(fromJson: JSON(Data()))
        content3.productCategoryName = "台柜柜池"
        dataArray.append(content3)
        
        let content4 = Content(fromJson: JSON(Data()))
        content4.productCategoryName = "医用架椅"
        dataArray.append(content4)
        
        let content5 = Content(fromJson: JSON(Data()))
        content5.productCategoryName = "其他系列"
        dataArray.append(content5)
    }


}
