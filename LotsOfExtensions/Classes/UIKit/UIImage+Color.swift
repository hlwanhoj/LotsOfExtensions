//
//  UIImage+Color.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 25/1/2021.
//

import UIKit

public extension UIImage {
	/**
	Create an image with pure color of certain size
	https://stackoverflow.com/questions/14523348/how-to-change-the-background-color-of-a-uibutton-while-its-highlighted
	*/
	static func colored(_ color: UIColor, size: CGSize = .init(width: 1, height: 1)) -> UIImage? {
		guard size.width > 0 && size.height > 0 else { return nil }
		
		let rect = CGRect(origin: .zero, size: size)
		UIGraphicsBeginImageContext(rect.size)
		let context = UIGraphicsGetCurrentContext()

		context?.setFillColor(color.cgColor)
		context?.fill(rect)

		let image = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()

		return image
	}
}
