//
//  UIImage+Sizing.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 24/1/2021.
//

import UIKit

public extension UIImage {

	/// Return a resized image which is resized proportionally.
	func scaled(toWidth width: CGFloat) -> UIImage {
		let newSize: CGSize
		if width > 0 {
			newSize = CGSize(width: width, height: width / size.width * size.height)
		} else {
			newSize = size
		}
		return scaled(to: newSize)
	}
		
	/// Return a resized image which is resized proportionally.
	func scaled(toHeight height: CGFloat) -> UIImage {
		let newSize: CGSize
		if height > 0 {
			newSize = CGSize(width: height / size.height * size.width, height: height)
		} else {
			newSize = size
		}
		return scaled(to: newSize)
	}
		
	/// Return a resized image.
	func scaled(to newSize: CGSize) -> UIImage {
		// This is the rect that we've calculated out and this is what is actually used below
		let rect = CGRect(origin: .zero, size: newSize)

		// Actually do the resizing to the rect using the ImageContext stuff
		UIGraphicsBeginImageContextWithOptions(newSize, false, 0)
		UIGraphicsGetCurrentContext()?.interpolationQuality = .high
		draw(in: rect)
		let newImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()

		return newImage ?? self
	}
}