//  Created by Ivan Golikov on 03.12.2019.

import UIKit

class MenuView: UIView {

    let listenButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Menu", for: .normal)
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
        verticalStackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        verticalStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        verticalStackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        verticalStackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        verticalStackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        verticalStackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
