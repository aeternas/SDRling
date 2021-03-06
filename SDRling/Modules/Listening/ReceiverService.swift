//  Created by Ivan Golikov on 11.02.2020.

import AVFoundation
import Foundation
import RxSwift
import Starscream

final class ReceiverService: FetchesReceiver {
    let disposeBag = DisposeBag()
    var socket: WebSocket?

    func setupReceiverConnection(frequency: String?, result: @escaping (Result<Data, Swift.Error>) -> Void) {
        guard
            let url = URL(string: "SOCKET_URL")
        else { return }
        frequency.map { print($0) }
        var request = URLRequest(url: url)
        request.setValue("ORIGIN_URL", forHTTPHeaderField: "Origin")
        request.setValue("WS_KEY", forHTTPHeaderField: "Sec-WebSocket-Key")
        socket = WebSocket(request: request)
        socket?.connect()

        socket?.rx.response.subscribe(onNext: { response in
            switch response {
            case .connected:
                debugPrint("Connected")
            case let .disconnected(error, _):
                debugPrint("Disconnected with optional error : \(error.debugDescription)")
            case let .text(msg):
                debugPrint("Message : \(msg)")
            case let .binary(data):
                debugPrint("Data is \(data)")
                result(.success(data))
            case .pong:
                debugPrint("Pong")
            case .ping:
                debugPrint("Ping")
            case let .error(error):
                debugPrint("Error: \(error.debugDescription)")
                result(.failure(error ?? Error.generalError))
            case .viabilityChanged:
                debugPrint("viabilityChanged")
            case .reconnectSuggested:
                debugPrint("reconnectSuggested")
            case .cancelled:
                debugPrint("cancelled")
            }
        }).disposed(by: disposeBag)
    }

    enum Error: Swift.Error {
        case generalError
    }
}
