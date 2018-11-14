//
//	ProductCategoryResponse.swift
//
//	Create by 建武 黄 on 24/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class ProductCategoryResponse : NSObject{

	var contents : Content = Content()
	var responseResult : ResponseResult = ResponseResult()


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		let contentsJson = json["contents"]
		if !contentsJson.isEmpty{
			contents = Content(fromJson: contentsJson)
		}
		let responseResultJson = json["responseResult"]
		if !responseResultJson.isEmpty{
			responseResult = ResponseResult(fromJson: responseResultJson)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if contents != nil{
			dictionary["contents"] = contents.toDictionary()
		}
		if responseResult != nil{
			dictionary["responseResult"] = responseResult.toDictionary()
		}
		return dictionary
	}


}
