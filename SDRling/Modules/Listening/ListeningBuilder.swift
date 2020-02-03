//  Created by Ivan Golikov on 14.12.2019.

import Foundation

final class ListeningBuilder: ModuleBuilder {
    func build() -> ListeningViewController {
        return ListeningViewController(viewModel: ListeningViewModelImpl())
    }
}
