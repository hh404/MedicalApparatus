//
//	Content.swift
//
//	Create by 建武 黄 on 24/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class Content : NSObject{

	var productCategoryID : String = ""
	var productCategoryName : String = ""
	var productSubCategory : [ProductSubCategory] = []

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
		productCategoryID = json["productCategoryID"].stringValue
		productCategoryName = json["productCategoryName"].stringValue
		productSubCategory = [ProductSubCategory]()
		let productSubCategoryArray = json["productSubCategory"].arrayValue
		for productSubCategoryJson in productSubCategoryArray{
			let value = ProductSubCategory(fromJson: productSubCategoryJson)
			productSubCategory.append(value)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if productCategoryID != nil{
			dictionary["productCategoryID"] = productCategoryID
		}
		if productCategoryName != nil{
			dictionary["productCategoryName"] = productCategoryName
		}
		if productSubCategory != nil{
			var dictionaryElements = [[String:Any]]()
			for productSubCategoryElement in productSubCategory {
				dictionaryElements.append(productSubCategoryElement.toDictionary())
			}
			dictionary["productSubCategory"] = dictionaryElements
		}
		return dictionary
	}

}
