//
//	Content.swift
//
//	Create by 建武 黄 on 25/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class ProductDetailContent : NSObject{

	var products : [Product] = []


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
		products = [Product]()
		let productsArray = json["products"].arrayValue
		for productsJson in productsArray{
			let value = Product(fromJson: productsJson)
			products.append(value)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if products != nil{
			var dictionaryElements = [[String:Any]]()
			for productsElement in products {
                dictionaryElements.append(productsElement.toDictironary())
			}
			dictionary["products"] = dictionaryElements
		}
		return dictionary
	}

}
