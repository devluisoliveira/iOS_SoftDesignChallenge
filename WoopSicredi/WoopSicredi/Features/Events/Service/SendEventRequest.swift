//
//  SendEventRequest.swift
//  WoopSicredi
//
//  Created by DevLuis on 04/07/21.
//

import Foundation

struct SendEventRequest : WoopRequest {
    let eventId: String
    let name: String
    let email: String
    
    init(currEventId: String, currName: String, currEmail:String) {
        eventId = currEventId
        name = currName
        email = currEmail
    }
    
    func toParameters() -> [String : Any] {
        let dict = ["eventId": eventId, "name": name, "email": email]
        return dict
    }
}
