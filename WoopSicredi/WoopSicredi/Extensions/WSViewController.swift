//
//  WSViewController.swift
//  WoopSicredi
//
//  Created by DevLuis on 03/07/21.
//

import Foundation
import UIKit

class WSViewController : UIViewController {
    
    var loaderVC: LoaderVC!
    
    public func setupLoader() {
        loaderVC = LoaderVC()
        guard let loaderView = loaderVC.view else { return }
        addChild(loaderVC)
        view.addSubview(loaderView)
    }
    
    public func hideLoader() {
        loaderVC.hide()
        view.sendSubviewToBack(loaderVC.view)
    }
}
