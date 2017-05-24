//
//  NetConfig.swift
//  Train12306Request
//
//  Created by Niko on 2017/5/5.
//  Copyright © 2017年 Niko. All rights reserved.
//

import Foundation
import Alamofire


private enum RequestBaseURL: String {
    // 12306
    case train12306 = "https://kyfw.12306.cn/otn/"
}

public enum Train12306ResourcePath: String, URLConvertible {
    /// Resource
    case stationName = "resources/js/framework/station_name.js"
    
    public func asURL() throws -> URL {
        return URL(string: RequestBaseURL.train12306.rawValue + self.rawValue)!
    }
}

public enum Train12306MainAPI: String, URLConvertible {
    //登录
    case initLogin = "login/init"
    case checkUser = "login/checkUser"
    case loginUser = "login/loginAysnSuggest"
    case getCaptcha = "passcodeNEW/getPassCodeNew"
    case checkCaptcha = "passcodeNew/checkRandCodeAnsyn"
    //查询
    case initQuery = "leftTicket/init"
    case logQuery = "leftTicket/log"
    case queryTrain = "leftTicket/query"
    case ticketPrice = "leftTicket/queryTicketPrice"
    //订单
    case submitOrder = "leftTicket/submitOrderRequest"
    case getQueueCount = "confirmPassenger/getQueueCount"
    case confirmQueue = "confirmPassenger/confirmSingleForQueue"
    case queryOrderWaitTime = "confirmPassenger/queryOrderWaitTime"
    case resultOrderForDcQueue = "confirmPassenger/resultOrderForDcQueue"
    case initDc = "confirmPassenger/initDc"
    case getPassengers = "confirmPassenger/getPassengerDTOs"
    case checkOrderInfo = "confirmPassenger/checkOrderInfo"
    
    case queryNoCompleteOrder = "queryOrder/queryMyOrderNoComplete"
    case queryCompleteOrder = "queryOrder/queryMyOrder"
    case cancelNoCompleteOrder = "queryOrder/cancelNoCompleteMyOrder"
    case confirmReturnTicket = "queryOrder/returnTicketAffirm"
    case returnTicket = "queryOrder/returnTicket"
    //乘客
    case addPassenger = "passengerss/realAdd"
    case deletePassenger = "passengers/delete"
    case editPassenger = "passengers/edit"
    //支付
    case initPay = "payOrder/init"
    case payOrder = "queryOrder/continuePayNoCompleteMyOrder"
    case payCheck = "payOrder/paycheckNew"
    
    public func asURL() throws -> URL {
        return URL(string: RequestBaseURL.train12306.rawValue + self.rawValue)!
    }
    
}

public enum Train12306AliPayAPI: String {
    /// Pay
    case webBussiness = "https://epay.12306.cn/pay/webBusiness"
    case alipayGateway = "https://mapi.alipay.com/gateway.do"
    
}
