//  Created by Ivan Golikov on 03.12.2019.

import UIKit

class MenuViewController: UIViewController {
    let router: Router

    init(router: Router) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = MenuView()
    }
}
