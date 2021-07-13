//
//  AppCoordinator.swift
//  WoopSicredi
//
//  Created by DevLuis on 03/07/21.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        goToEventsList()
    }
    
    func goToEventsList() {
        let eventsCoordinator = EventsCoordinator(navigationController: navigationController)
        childCoordinators.append(eventsCoordinator)
        eventsCoordinator.start()
    }
}
