//
//  Coordinator.swift
//  WoopSicredi
//
//  Created by DevLuis on 03/07/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
