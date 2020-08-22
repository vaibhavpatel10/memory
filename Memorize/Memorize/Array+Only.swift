//
//  Array+Only.swift
//  Memorize
//
//  Created by Vaibhav Patel on 8/4/20.
//  Copyright © 2020 Vaibhav Patel. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first: nil
    }
}
