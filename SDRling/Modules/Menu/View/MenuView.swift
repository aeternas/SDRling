//  Created by Ivan Golikov on 03.12.2019.

import UIKit

public final class MenuView: UIView {

    let listenButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(Constants.menuTitle, for: .normal)
        return button
    }()

    let verticalStackView = UIStackView()

    convenience init() {
        self.init(frame: .zero)
        backgroundColor = .white
        addSubviews()
        makeConstraints()
    }

    func addSubviews() {
        addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(listenButton)
    }

    func makeConstraints() {
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [
                verticalStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
                verticalStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
                verticalStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
                verticalStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
                verticalStackView.topAnchor.constraint(equalTo: topAnchor),
                verticalStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ]
        )
    }

    // MARK: - Constants

    enum Constants {
        static let menuTitle = "Menu"
    }
}
