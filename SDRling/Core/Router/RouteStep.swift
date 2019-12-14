//  Created by Ivan Golikov on 14.12.2019.

import UIKit

public protocol RouteStep {
    associatedtype VC: UIViewController
    var vc: VC { get }
}
