//
//	Product.swift
//
//	Create by 建武 黄 on 24/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Product : NSObject{

	var detail : String = ""
	var productID : String = ""
	var productName : String = ""
	var title : String = ""
	var url : String = ""


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
		detail = json["detail"].stringValue
		productID = json["productID"].stringValue
		productName = json["productName"].stringValue
		title = json["title"].stringValue
		url = json["url"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictironary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if detail != nil{
			dictionary["detail"] = detail
		}
		if productID != nil{
			dictionary["productID"] = productID
		}
		if productName != nil{
			dictionary["productName"] = productName
		}
		if title != nil{
			dictionary["title"] = title
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}


}
