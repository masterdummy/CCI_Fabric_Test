//
//  AppDelegate.swift
//  CCI_Fabric_Test
//
//  Created by Simone Barbara B on 22/11/2018.
//  Copyright © 2018 Simone Barbara. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Fabric.with([Crashlytics.self])

        return true
    }

}

