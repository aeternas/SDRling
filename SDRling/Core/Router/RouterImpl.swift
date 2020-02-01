//  Created by Ivan Golikov on 14.12.2019.

import UIKit

public final class RouterImpl: Router {
    public func listeningRoute() {
        let step = RouteStepImpl(ListeningBuilder())
        let navigationController = topNavigation()
        navigationController?.pushViewController(step.vc, animated: true)
    }

    private func getTopController() -> UIViewController? {
        guard var topController = UIApplication.shared.keyWindow?.rootViewController else { return nil }
        while let presentedViewController = topController.presentedViewController {
            topController = presentedViewController
        }
        return topController
    }

    private func topNavigation(_ viewController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UINavigationController? {
        if let nav = viewController as? UINavigationController {
            return nav
        }
        guard
            let tab = viewController as? UITabBarController,
            let selected = tab.selectedViewController
        else { return viewController?.navigationController }
        return selected.navigationController
    }
}
