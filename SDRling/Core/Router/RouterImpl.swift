//  Created by Ivan Golikov on 14.12.2019.

import UIKit

public class RouterImpl: Router {

    public func listeningRoute() {
        let step = RouteStepImpl(ListeningBuilder())
        let top = getTopController()
        top?.navigationController?.pushViewController(step.vc, animated: true)
    }

    private func getTopController() -> UIViewController? {
        guard var topController = UIApplication.shared.keyWindow?.rootViewController else { return nil }
        while let presentedViewController = topController.presentedViewController {
            topController = presentedViewController
        }
        return topController
    }
}
