//
//  UIEdgeInsets+Init.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 16/1/2021.
//

import UIKit

public extension UIEdgeInsets {
	/// Creates insets where all the offsets are value.
	static func all(value: CGFloat) -> UIEdgeInsets {
		return .init(top: value, left: value, bottom: value, right: value)
	}
	
	/// Creates insets with only the given values.
	static func only(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> UIEdgeInsets {
		return .init(top: top, left: left, bottom: bottom, right: right)
	}

	///	Creates insets with symmetrical vertical and horizontal offsets.
	static func symmetric(vertical: CGFloat = 0, horizontal: CGFloat = 0) -> UIEdgeInsets {
		return .init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
	}

	//
	
	static prefix func - (val: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(top: -val.top, left: -val.left, bottom: -val.bottom, right: -val.right)
	}

	//
	
	/// Sum of all horizontal values
	var horizontals: CGFloat { left + right }
	
	/// Sum of all vertical values
	var verticals: CGFloat { top + bottom }
	
}
