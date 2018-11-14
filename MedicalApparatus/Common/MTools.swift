//
//  MTools.swift
//  MedicalApparatus
//
//  Created by huangjianwu on 2018/5/27.
//  Copyright © 2018年 huangjianwu. All rights reserved.
//

import UIKit

class MTools: NSObject {
    //  Converted to Swift 4 by Swiftify v4.1.6715 - https://objectivec2swift.com/
    class func conventColorToImage(_ color: UIColor?) ->UIImage {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        //宽高 1.0只要有值就够了
        UIGraphicsBeginImageContext(rect.size)
        //在这个范围内开启一段上下文
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor((color?.cgColor)!)
        //在这段上下文中获取到颜色UIColor
        context?.fill(rect)
        //用这个颜色填充这个上下文
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        //从这段上下文中获取Image属性,,,结束
        UIGraphicsEndImageContext()
        return image!
    }
}
