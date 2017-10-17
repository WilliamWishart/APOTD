//
//  AppDelegate.swift
//  APOTD
//
//  Created by William Wishart on 14/10/2017.
//  Copyright © 2017 Willsolve LLP. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var apotdService: APOTDServiceProtocol!
    var viewControllerFactory: ViewControllerFactory!
    var appCoordinator: AppCoordinator!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Bootstrap
        self.apotdService = APOTDService()
        self.viewControllerFactory = ViewControllerFactory(apotdService: self.apotdService)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.appCoordinator = AppCoordinator(window: self.window!, viewControllerFactory: self.viewControllerFactory)
        
        // Run application
        self.appCoordinator.start()
        
        return true
    }    
}

