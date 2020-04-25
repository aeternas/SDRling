//  Created by Ivan Golikov on 14.12.2019.

import RouteComposer

public final class RouterImpl: Router {
    public func listeningRoute() {
        let destStep = StepAssembly(
            finder: ClassFinder<ListeningViewController, Void>(),
            factory: ListeningBuilder()
        )
        .using(UINavigationController.push())
        .from(SingleContainerStep(
            finder: ClassFinder<UINavigationController, Void>(),
            factory: NavigationControllerFactory())
        )
        .using(GeneralAction.nilAction())
        .from(GeneralStep.current())
        .assemble()

        try? DefaultRouter().navigate(to: destStep, with: ())
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
