//
//	ResponseResult.swift
//
//	Create by 建武 黄 on 24/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class ResponseResult : NSObject{

	var businessDescription : String = ""
	var code : String = ""


    convenience override init() {
        self.init(fromJson: JSON(Data()))
    }
	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		businessDescription = json["businessDescription"].stringValue
		code = json["code"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if businessDescription != nil{
			dictionary["businessDescription"] = businessDescription
		}
		if code != nil{
			dictionary["code"] = code
		}
		return dictionary
	}


}
