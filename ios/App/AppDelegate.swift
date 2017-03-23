//
//  AppDelegate.swift
//  App
//
//  Created by Patrik Holcak on 23/03/2017.
//  Copyright © 2017 Patrik Holcak. All rights reserved.
//

import UIKit
import React

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let jsCodeLocation: URL = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
        let rootView = RCTRootView.init(bundleURL: jsCodeLocation, moduleName: "App", initialProperties: nil, launchOptions: launchOptions)
        rootView?.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

        window = UIWindow(frame: UIScreen.main.bounds)
        let rootViewController = UIViewController()
        rootViewController.view = rootView
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()

        return true
    }
}

