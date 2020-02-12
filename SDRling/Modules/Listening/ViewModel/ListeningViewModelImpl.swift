//  Created by Ivan Golikov on 02.02.2020.

import Foundation

public final class ListeningViewModelImpl: ListeningViewModel {
    let receiverService: FetchesReceiver

    var frequencyValue: String?

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
        receiverService.setupReceiverConnection()
    }
}
