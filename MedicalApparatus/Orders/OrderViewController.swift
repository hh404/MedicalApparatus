//
//  OrderViewController.swift
//  MedicalApparatus
//
//  Created by huangjianwu on 2018/5/24.
//  Copyright © 2018年 huangjianwu. All rights reserved.
//

import UIKit
import UIColor_Hex_Swift

class OrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
                self.title = "订单"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(MTools.conventColorToImage(UIColor("#00BFFF")), for: .default)
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
