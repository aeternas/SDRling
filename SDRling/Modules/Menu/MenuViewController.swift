//  Created by Ivan Golikov on 03.12.2019.

import RxCocoa
import RxSwift
import UIKit

final class MenuViewController: UIViewController {
    let viewModel: MenuViewModel

    private let disposeBag = DisposeBag()

    private var customView: MenuView? {
        view as? MenuView
    }

    init(
        viewModel: MenuViewModel
    ) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        setupBindings()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = MenuView()
    }

    func setupBindings() {
        customView?.listenButton.rx.tap.subscribe { _ in
            self.viewModel.openListening()
        }.disposed(by: disposeBag)
    }
}
