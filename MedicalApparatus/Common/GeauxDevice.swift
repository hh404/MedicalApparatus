//
//  GeauxDevice.swift
//  Geaux
//
//  Created by huangjianwu on 2018/5/4.
//  Copyright © 2018年 geaux. All rights reserved.
//

import Foundation
import UIKit

private func getVersionCode() -> String {
    var systemInfo = utsname()
    uname(&systemInfo)
    
    let versionCode: String = String(validatingUTF8: NSString(bytes: &systemInfo.machine, length: Int(_SYS_NAMELEN), encoding: String.Encoding.ascii.rawValue)!.utf8String!)!
    
    return versionCode
}

enum GDevice {
    static var isPhoneX: Bool {
        //
        if(getVersionCode() == "x86_64"){
            if(UIScreen.main.bounds.height == 812){
                return true
            }
        }
        return ["iPhone10,3", "iPhone10,6"].contains(getVersionCode())
    }
}
