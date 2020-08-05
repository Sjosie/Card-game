//
//  Array+Only.swift
//  Memorize
//
//  Created by Евгений Протопопов on 09.07.2020.
//  Copyright © 2020 Евгений Протопопов. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
