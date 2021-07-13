//
//  FetchEventDetailsResponse.swift
//  WoopSicredi
//
//  Created by DevLuis on 04/07/21.
//

import Foundation
import SwiftyJSON

struct FetchEventDetailsResponse : WoopDataModel {
    var eventData: EventData? = nil
    
    init(json: JSON) {
        eventData = EventData(json: json)
    }
}
