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
        config()
        goToEventsList()
    }
    
    private func config() {
        navigationController.navigationBar.barTintColor = UIColor(named: "ColorRoxo")
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: WSFont.FontTypes.bold.font(withSize: 30)]
        navigationController.navigationBar.prefersLargeTitles = false
        
    }
    
    func goToEventsList() {
        let eventsCoordinator = EventsCoordinator(navigationController: navigationController)
        childCoordinators.append(eventsCoordinator)
        eventsCoordinator.start()
    }
}
