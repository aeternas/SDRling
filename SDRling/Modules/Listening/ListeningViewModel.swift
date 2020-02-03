//  Created by Ivan Golikov on 02.02.2020.

import Foundation

public protocol ListeningViewModelInput: AnyObject {
    func updateFrequencyValue(_ value: String?)
    func connect()
}

public protocol ListeningViewModelOutput: AnyObject {

}

public protocol ListeningViewModel: ListeningViewModelInput, ListeningViewModelOutput { }
