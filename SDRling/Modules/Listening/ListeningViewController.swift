//  Created by Ivan Golikov on 14.12.2019.

import RxSwift
import UIKit

public final class ListeningViewController: UIViewController {
    let disposeBag = DisposeBag()
    let viewModel: ListeningViewModel

    let customView = ListeningView()

    override public func loadView() {
        view = customView
    }

    init(viewModel: ListeningViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        setupBindings()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupBindings() {
        customView.frequencyField.rx.value
            .subscribe(onNext: { [weak self] in self?.viewModel.updateFrequencyValue(_:) }())
            .disposed(by: disposeBag)
        customView.listenButton.rx.tap
            .subscribe(onNext: { [weak self] in self?.viewModel.connect() })
            .disposed(by: disposeBag)
    }
}
