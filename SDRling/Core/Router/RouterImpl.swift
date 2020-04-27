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
}
