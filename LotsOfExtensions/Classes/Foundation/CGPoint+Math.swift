//
//  CGPoint+Math.swift
//  LotsOfExtensions
//
//  Created by hlwanhoj on 1/1/2021.
//

import Foundation

public extension CGPoint {
	static prefix func - (left: CGPoint) -> CGPoint {
		return CGPoint(x: -left.x, y: -left.y)
	}
	
	// Interact with CGFloat
	
	static func + (left: CGPoint, right: CGFloat) -> CGPoint {
		  return CGPoint(x: left.x + right, y: left.y + right)
	}

	static func - (left: CGPoint, right: CGFloat) -> CGPoint {
		  return left + (-right)
	}

	static func * (left: CGPoint, right: CGFloat) -> CGPoint {
		  return CGPoint(x: left.x * right, y: left.y * right)
	}

	static func / (left: CGPoint, right: CGFloat) -> CGPoint {
		return left * (1.0 / right)
	}
}
