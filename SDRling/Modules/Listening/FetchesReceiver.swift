//  Created by Ivan Golikov on 11.02.2020.

import Foundation

protocol FetchesReceiver: AnyObject {
    func setupReceiverConnection(result: @escaping (Result<Data, Error>) -> Void)
}
