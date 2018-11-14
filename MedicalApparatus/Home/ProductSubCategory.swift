//
//	ProductSubCategory.swift
//
//	Create by 建武 黄 on 24/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class ProductSubCategory : NSObject{

	var detail : String = ""
	var productSubCategoryID : String = ""
	var productSubCategoryName : String = ""
	var products : [Product] = []
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
		productSubCategoryID = json["productSubCategoryID"].stringValue
		productSubCategoryName = json["productSubCategoryName"].stringValue
		products = [Product]()
		let productsArray = json["products"].arrayValue
		for productsJson in productsArray{
			let value = Product(fromJson: productsJson)
			products.append(value)
		}
		url = json["url"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if detail != nil{
			dictionary["detail"] = detail
		}
		if productSubCategoryID != nil{
			dictionary["productSubCategoryID"] = productSubCategoryID
		}
		if productSubCategoryName != nil{
			dictionary["productSubCategoryName"] = productSubCategoryName
		}
		if products != nil{
			var dictionaryElements = [[String:Any]]()
			for productsElement in products {
                dictionaryElements.append(productsElement.toDictironary())
			}
			dictionary["products"] = dictionaryElements
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}
}
