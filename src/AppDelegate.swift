//
//  AppDelegate.swift
//  RoomPlan3D
//
//  Created by Дарья Шубич on 1.06.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import UIKit
import RoomPlan
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // MARK: UISceneSession life cycle

    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession,
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        var configurationName = "Default Configuration"
        if !RoomCaptureSession.isSupported {
            configurationName = "Unsupported Device"
        }
        return UISceneConfiguration(name: configurationName, sessionRole: connectingSceneSession.role)
    }
}

