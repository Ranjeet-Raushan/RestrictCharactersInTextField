//  AppDelegate.swift
//  RestrictCharactersInTextField
//  Created by Ranjeet Raushan on 14/01/19.
//  Copyright © 2019 vaayoo. All rights reserved.

import UIKit
import IQKeyboardManagerSwift// KeyBoardHandling

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.enable = true // KeyBoardHandling
        return true
    }

}

