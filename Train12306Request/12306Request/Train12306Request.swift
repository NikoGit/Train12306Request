//
//  BaseRequest.swift
//  Train12306Request
//
//  Created by Niko on 2017/5/8.
//  Copyright © 2017年 Niko. All rights reserved.
//

import Foundation
import Alamofire

//class Train12306Request.: NSObject {
//    
//    var currentRequest: Request?
//    
//    override init() {
//        super.init()
//    }
//
//}


enum Train12306Request {
    case initLogin()
    case login()
    case check(Int)
}


extension Train12306Request: RequestConvertible {
    var api: URLConvertible {
        switch self {
        case .check( _):
            return Train12306MainAPI.checkCaptcha
        default:
            return Train12306MainAPI.loginUser
        }
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
    
    var params: Parameters? {
        return nil
    }
}
