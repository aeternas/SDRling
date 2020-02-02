//  Created by Ivan Golikov on 14.12.2019.

import UIKit

public final class ListeningViewController: UIViewController {
    let customView = ListeningView()

    public override func loadView() {
        view = customView
    }
}
