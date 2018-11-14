//
//  HTTPRequstKeyConstant.swift
//  Geaux
//
//  Created by huangjianwu on 2018/4/13.
//  Copyright © 2018年 geaux. All rights reserved.
//

import Foundation

struct HTTPRequstKey {
    struct NearByList {
        static let experienceLevel = "experience_level"
        static let expertiseId = "expertise_id"
        static let longitude = "longitude"
        static let latitude = "latitude"
    }
    struct Common {
        static let id = "id"
    }
    struct ServiceStatus {
         static let id = "id"
    }
    struct AddCard {
      static let number = "number"
      static let expMonth = "exp_month"
      static let expYear = "exp_year"
      static let cvc = "cvc"
      static let defaultType = "default"
    }
    
    struct Delete {
        static let cardID = "card_id"
    }
    
    struct Charge {
        static let tip = "tip"
        static let score = "score"
    }
    
    struct Feedback {
       static let firsName = "first_name"
        static let lastName = "last_name"
        static let phoneNumber = "phone_number"
        static let email = "email"
        static let comment = "comment"
    }
}

struct HTTPRequstValue {
    enum ExperienceLevel :String{
        case beginner = "Beginner"
        case intermediate = "Intermediate"
        case expert = "Expert"
    }
}
