//  Created by Ivan Golikov on 14.12.2019.

import Foundation

public protocol ModuleBuilder {
    associatedtype T
    func build() -> T
}
