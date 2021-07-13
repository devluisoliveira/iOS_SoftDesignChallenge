//
//  DateExtension.swift
//  WoopSicredi
//
//  Created by DevLuis on 03/07/21.
//

import Foundation

extension Date {
    
    func toFormat( _ format: String) -> String {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = format
        return dateFormatterPrint.string(from: self)
    }
}
