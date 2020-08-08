//  Created by Ivan Golikov on 02.02.2020.

import Foundation

public final class ListeningViewModelImpl: ListeningViewModel {
    let receiverService: FetchesReceiver

    var frequencyValue: String?

    private var data: Data = .init()

    init(
        receiverService: FetchesReceiver = ReceiverService()
    ) {
        self.receiverService = receiverService
    }

    public func updateFrequencyValue(_ value: String?) {
        guard let value = value else { return }
        frequencyValue = value
    }

    public func connect() {
        receiverService.setupReceiverConnection(frequency: nil) { [weak self] result in
            guard case let .success(buffer) = result else { return }
            self?.data.append(buffer)
            print(self?.data as Any)
        }
    }
}
