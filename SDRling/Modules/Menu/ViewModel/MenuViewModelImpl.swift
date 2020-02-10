//  Created by Ivan Golikov on 14.12.2019.

import Foundation

final class MenuViewModelImpl: MenuViewModel {
    let router: Router

    init(router: Router) {
        self.router = router
    }

    func openListening() {
        router.listeningRoute()
    }
}
