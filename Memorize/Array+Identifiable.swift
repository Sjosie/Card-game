//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Евгений Протопопов on 07.07.2020.
//  Copyright © 2020 Евгений Протопопов. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
