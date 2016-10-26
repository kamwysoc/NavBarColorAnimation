//
//  AppDelegate.swift
//  navAnimation
//
//  Created by Kamil Wysocki on 26/10/16.
//  Copyright © 2016 k8mil. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let vc = ViewControllerA()
        let navigationController = UINavigationController(rootViewController: vc)
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        return true
        
    }

}

