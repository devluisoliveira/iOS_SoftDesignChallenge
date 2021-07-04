//
//  WoopNetworkService.swift
//  WoopSicredi
//
//  Created by DevLuis on 03/07/21.
//

import Foundation
import Alamofire
import SwiftyJSON

class WoopNetworkService {
    
    let apiURL = "http://5f5a8f24d44d640016169133.mockapi.io/api/"
    
    func requestJson(
        _ url: String,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding = JSONEncoding.default,
        headers: HTTPHeaders? = nil,
        completion: @escaping (WoopRequestErrorModel?, DataResponse<Any>?) -> Void) {
        
        let request = Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers)
        
        request.responseJSON { (dataResponse) in
            let statusCode = dataResponse.response?.statusCode ?? 0
            
            if statusCode >= 200 && statusCode <= 299 {
                completion(nil, dataResponse)
                return
            } else {
                let error = WoopRequestErrorModel(response: dataResponse)
                completion(error, nil)
            }
        }
    }
}
