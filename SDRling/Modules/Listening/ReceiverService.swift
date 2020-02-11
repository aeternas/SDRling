//  Created by Ivan Golikov on 11.02.2020.

import AVFoundation
import Foundation
import RxSwift
import Starscream

class ReceiverService: FetchesReceiver {
    let disposeBag = DisposeBag()
    var socket: WebSocket?

    func setupReceiverConnection() {
        guard
            let url = URL(string: "SOCKET_URL")
        else { return }
        var request = URLRequest(url: url)
        request.setValue("ORIGIN_URL", forHTTPHeaderField: "Origin")
        request.setValue("WS_KEY", forHTTPHeaderField: "Sec-WebSocket-Key")
        socket = WebSocket(request: request)
        socket?.connect()

        socket?.rx.response.subscribe(onNext: { (response: WebSocketEvent) in
            switch response {
            case .connected:
                print("Connected")
            case .disconnected(let error):
                print("Disconnected with optional error : \(error.debugDescription)")
            case .message(let msg):
                print("Message : \(msg)")
            case let .data(data):
                print("Data is \(data)")
            case .pong:
                print("Pong")
            }
        }).disposed(by: disposeBag)
    }
}
