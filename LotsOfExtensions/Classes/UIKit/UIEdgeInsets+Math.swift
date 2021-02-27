//
//  UIEdgeInsets+Math.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 27/2/2021.
//

import UIKit

public extension UIEdgeInsets {
	static prefix func - (val: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(top: -val.top, left: -val.left, bottom: -val.bottom, right: -val.right)
	}
}
