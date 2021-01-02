//
//  CGSize+Math.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 2/1/2021.
//

import Foundation

public extension CGSize {
	static prefix func - (left: CGSize) -> CGSize {
		return CGSize(width: -left.width, height: -left.height)
	}
	
	// Interact with CGFloat
	
	static func + (left: CGSize, right: CGFloat) -> CGSize {
		  return CGSize(width: left.width + right, height: left.height + right)
	}

	static func - (left: CGSize, right: CGFloat) -> CGSize {
		  return left + (-right)
	}

	static func * (left: CGSize, right: CGFloat) -> CGSize {
		  return CGSize(width: left.width * right, height: left.height * right)
	}

	static func / (left: CGSize, right: CGFloat) -> CGSize {
		return left * (1.0 / right)
	}
}
