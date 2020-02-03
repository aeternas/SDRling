//  Created by Ivan Golikov on 31.01.2020.

import RxSwift
import UIKit

public final class ListeningView: UIView {
    lazy var frequencyField: UITextField = {
        let field = UITextField()
        field.textAlignment = .center
        field.placeholder = Constants.frequencyPlaceholder
        return field
    }()

    lazy var listenButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(Constants.tuneLabel, for: .normal)
        return button
    }()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubviews()
        makeConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        [
            frequencyField,
            listenButton
        ].forEach { addSubview($0); $0.translatesAutoresizingMaskIntoConstraints = false }
    }

    private func makeConstraints() {
        NSLayoutConstraint.activate(
            [
                frequencyField.centerYAnchor.constraint(equalTo: centerYAnchor),
                frequencyField.centerXAnchor.constraint(equalTo: centerXAnchor),
                listenButton.centerXAnchor.constraint(equalTo: frequencyField.centerXAnchor),
                listenButton.topAnchor.constraint(equalTo: frequencyField.bottomAnchor, constant: 18)
            ]
        )
    }

    // MARK: - Constants

    enum Constants {
        static let frequencyPlaceholder = "Enter frequency in kHz"
        static let tuneLabel = "Tuned!"
    }
}
