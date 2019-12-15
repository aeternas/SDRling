//
//  MenuViewModel.swift
//  SDRling
//
//  Created by Ivan Golikov on 14.12.2019.
//  Copyright © 2019 Ivan Golikov. All rights reserved.
//

import Foundation

public protocol MenuViewModelInput: AnyObject {

}

public protocol MenuViewModelOutput: AnyObject {

}

public protocol MenuViewModel: MenuViewModelInput, MenuViewModelOutput { }