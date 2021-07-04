//
//  StringExtension.swift
//  WoopSicredi
//
//  Created by DevLuis on 03/07/21.
//

import Foundation
import UIKit

extension String {
    
    func toConstraints(withViews: [String:Any]) -> [NSLayoutConstraint] {
        return NSLayoutConstraint.constraints(
            withVisualFormat: self,
            metrics: nil,
            views: withViews)
    }
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}

