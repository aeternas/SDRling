//  Created by Ivan Golikov on 14.12.2019.

import Foundation
import protocol RouteComposer.Factory

final class ListeningBuilder: ModuleBuilder {
    typealias ViewController = ListeningViewController
    typealias Context = Void

    func build() -> ListeningViewController {
        return ListeningViewController(viewModel: ListeningViewModelImpl())
    }
}

extension ListeningBuilder: Factory {
    func build(with context: Void) throws -> ListeningViewController {
        return build()
    }
}
