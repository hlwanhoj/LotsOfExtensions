//
//  CGSize+Math.swift
//  LotsOfExtensions
//
//  Created by hlwanhoj on 2/1/2021.
//

import Foundation

public extension CGSize {
    /// Creates a square Size whose width and height are the given dimension
    static func square(_ dimension: CGFloat) -> Self {
        return CGSize(width: dimension, height: dimension)
    }
}

// MARK: - Math
    
public extension CGSize {
	static prefix func - (left: Self) -> Self {
		return CGSize(width: -left.width, height: -left.height)
	}
	
	// Interact with CGFloat
	
	static func + (left: Self, right: CGFloat) -> Self {
		  return CGSize(width: left.width + right, height: left.height + right)
	}

	static func - (left: Self, right: CGFloat) -> Self {
		  return left + (-right)
	}

	static func * (left: Self, right: CGFloat) -> Self {
		  return CGSize(width: left.width * right, height: left.height * right)
	}

	static func / (left: Self, right: CGFloat) -> Self {
		return left * (1.0 / right)
	}
}
