//  Created by Ivan Golikov on 10/11/2019.
//  Copyright © 2019 Ivan Golikov. All rights reserved.

import UIKit

class ViewController: UIViewController {

    lazy var label: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
    }

    private func addSubviews() {
        view.addSubview(label)
    }
}
