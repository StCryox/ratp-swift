//
//  AppDelegate.swift
//  Ratp
//
//  Created by Ifzas Nguyen on 01/06/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let w = UIWindow(frame: UIScreen.main.bounds)
        let home = HomeViewController()
        w.rootViewController = UINavigationController(rootViewController: home)
        w.makeKeyAndVisible()
        self.window = w
        return true;
    }


}

