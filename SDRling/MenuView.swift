//  Created by Ivan Golikov on 03.12.2019.

import UIKit

class MenuView: UIView {
    let verticalStackView = UIStackView()

    func addSubviews() {
        addSubview(verticalStackView)
    }

    func makeConstraints() {
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        verticalStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
