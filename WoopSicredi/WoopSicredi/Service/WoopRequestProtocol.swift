//
//  WoopRequestProtocol.swift
//  WoopSicredi
//
//  Created by DevLuis on 03/07/21.
//

import Foundation

protocol WoopRequest {
    func toParameters() -> [String:Any]
}
