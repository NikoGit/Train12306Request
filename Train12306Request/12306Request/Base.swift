//
//  Base.swift
//  Train12306Request
//
//  Created by Niko on 2017/5/8.
//  Copyright © 2017年 Niko. All rights reserved.
//

import Foundation
import Alamofire

protocol RequestConvertible: URLRequestConvertible {
    var api: URLConvertible { get }
    var params: Parameters? { get }
    var method: HTTPMethod { get }
    var encoding: ParameterEncoding { get }
    var headers: HTTPHeaders? { get }
}

extension RequestConvertible {
    var encoding: ParameterEncoding {
        return URLEncoding.default
    }
    public func asURLRequest() throws -> URLRequest {
        let originalRequest = try URLRequest(url: api.asURL(), method: method, headers: headers)
        let encodedURLRequest = try encoding.encode(originalRequest, with: params)
        return encodedURLRequest
    }
}

