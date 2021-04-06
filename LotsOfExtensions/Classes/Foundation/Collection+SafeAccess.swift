//
//  Collection+SafeAccess.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 2/4/2021.
//

import Foundation

public extension Collection {
    /// Return the element at specific index, or nil for invalid index
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

public extension RangeReplaceableCollection {
    /// Remove the element at specific index if it exists
    @discardableResult mutating func safelyRemove(at i: Self.Index) -> Self.Element? {
        if indices.contains(i) {
            return remove(at: i)
        }
        return nil
    }
    
    /// Remove the element at specific index if it exists
    func safelyRemoving(at i: Self.Index) -> Self {
        var c = self
        c.safelyRemove(at: i)
        return c
    }
}
