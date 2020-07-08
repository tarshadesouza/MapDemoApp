//
//  AppDelegate.swift
//  MapDemoApp
//
//  Created by Tarsha De Souza on 08/07/2020.
//  Copyright © 2020 TarshaDeSouza. All rights reserved.
//

import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		//MARK: For the sake of demo purposes im hard coding this api key in with no protection
		GMSServices.provideAPIKey("AIzaSyBwQHKORryZdS6dzGkP3Dh_kxBhRURtwv4")
        window = UIWindow(frame: UIScreen.main.bounds)
        AppDelegate.setupNavBarBehaviour()
        window?.rootViewController = UINavigationController(rootViewController: MainMapViewController())
        window?.makeKeyAndVisible()
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
    
    static func setupNavBarBehaviour() {
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().shadowImage = UIImage()
        let navbarAttrs: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.foregroundColor: UIColor.red,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)
        ]
        UINavigationBar.appearance().titleTextAttributes = navbarAttrs
    }
}


