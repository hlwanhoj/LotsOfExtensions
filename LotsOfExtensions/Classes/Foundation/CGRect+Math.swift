//
//  CGRect+Math.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 10/1/2021.
//

import Foundation

public extension CGRect {

	// Interact with CGPoint
	
	static func + (left: CGRect, right: CGPoint) -> CGRect {
		return left.offsetBy(dx: right.x, dy: right.y)
	}
	
	static func - (left: CGRect, right: CGPoint) -> CGRect {
		return left + (-right)
	}
}
