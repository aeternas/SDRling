//  Created by Ivan Golikov on 14.12.2019.

import UIKit

public struct RouteStepImpl<VC: UIViewController>: RouteStep {
    public let vc: VC

    init<MB: ModuleBuilder>(_ builder: MB) where MB.ViewController == VC {
        vc = builder.build()
    }
}
