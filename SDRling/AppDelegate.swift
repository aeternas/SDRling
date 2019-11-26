//  Created by Ivan Golikov on 10/11/2019.
//  Copyright © 2019 Ivan Golikov. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor.clear
        window!.rootViewController = viewController
        window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_: UIApplication) { }

    func applicationDidEnterBackground(_: UIApplication) { }

    func applicationWillEnterForeground(_: UIApplication) { }

    func applicationDidBecomeActive(_: UIApplication) { }

    func applicationWillTerminate(_: UIApplication) { }
}
