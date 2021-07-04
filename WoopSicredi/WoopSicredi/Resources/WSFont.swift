//
//  WSFont.swift
//  WoopSicredi
//
//  Created by DevLuis on 04/07/21.
//

import Foundation
import UIKit

class WSFont {
    enum FontTypes {
        case regular
        case bold
        
        func font(withSize size: CGFloat) -> UIFont {
            let type = self.fontType()
            switch type {
            case .bold:
                return UIFont.boldSystemFont(ofSize: size)
            case .regular:
                return UIFont.systemFont(ofSize: size)
            }
            
        }
        
        func fontType() -> FontTypes {
            switch self {
            case .bold: return .bold
            case .regular: return .regular
            }
        }
    }
}
