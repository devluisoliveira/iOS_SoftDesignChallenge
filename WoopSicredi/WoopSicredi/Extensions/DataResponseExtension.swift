//
//  DataResponseExtension.swift
//  WoopSicredi
//
//  Created by DevLuis on 03/07/21.
//

import Foundation
import Alamofire
import SwiftyJSON

extension DataResponse {
    
    var jsonValue: JSON {
        return JSON(result.value)
    }
}
