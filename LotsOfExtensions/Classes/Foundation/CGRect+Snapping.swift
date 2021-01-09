//
//  CGRect+Snapping.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 9/1/2021.
//

import Foundation

public extension CGRect {
	/// Anchor point in the unit coordinate space. The value of (0, 0) represents the top left of this rectangle, while (1, 1) represents the bottom right
	enum Anchor {
		case topLeft, topCenter, topRight
		case centerLeft, center, centerRight
		case bottomLeft, bottomCenter, bottomRight
		case any(x: CGFloat, y: CGFloat)
	
		var rawValue: CGPoint {
			switch self {
			case .topLeft:
			  return CGPoint(x: 0, y: 0)
			case .topCenter:
			  return CGPoint(x: 0.5, y: 0)
			case .topRight:
			  return CGPoint(x: 1, y: 0)
			case .centerLeft:
			  return CGPoint(x: 0, y: 0.5)
			case .center:
			  return CGPoint(x: 0.5, y: 0.5)
			case .centerRight:
			  return CGPoint(x: 1, y: 0.5)
			case .bottomLeft:
			  return CGPoint(x: 0, y: 1)
			case .bottomCenter:
			  return CGPoint(x: 0.5, y: 1)
			case .bottomRight:
			  return CGPoint(x: 1, y: 1)
			case let .any(x, y):
			  let _x = max(0, min(1, x))
			  let _y = max(0, min(1, y))
			  return CGPoint(x: _x, y: _y)
			}
		}

		public var x: CGFloat { rawValue.x }
		public var y: CGFloat { rawValue.y }
	}

	//
	
	/// Move the rect by aligning the specified anchor to certain position
	mutating func snap(_ anchor: Anchor, to pt: CGPoint) {
		origin = pt - CGPoint(x: anchor.x * width, y: anchor.y * height)
	}

	//

	/// Return the actual position of certain anchor point in this rectangle
	func getAnchor(_ anchor: Anchor) -> CGPoint {
		return origin + CGPoint(x: anchor.x * width, y: anchor.y * height)
	}
	
	/// Move the rect by aligning the specified anchor to certain position
	func snapping(_ anchor: Anchor, to pt: CGPoint) -> CGRect {
		var rect = self
		rect.snap(anchor, to: pt)
		return rect
	}

	//
	
	var topLeft: CGPoint {
		get { return getAnchor(.topLeft) }
		set { snap(.topLeft, to: newValue) }
	}

	var topCenter: CGPoint {
		get { return getAnchor(.topCenter) }
		set { snap(.topCenter, to: newValue) }
	}

	var topRight: CGPoint {
		get { return getAnchor(.topRight) }
		set { snap(.topRight, to: newValue) }
	}

	var centerLeft: CGPoint {
		get { return getAnchor(.centerLeft) }
		set { snap(.centerLeft, to: newValue) }
	}

	var center: CGPoint {
		get { return getAnchor(.center) }
		set { snap(.center, to: newValue) }
	}

	var centerRight: CGPoint {
		get { return getAnchor(.centerRight) }
		set { snap(.centerRight, to: newValue) }
	}

	var bottomLeft: CGPoint {
		get { return getAnchor(.bottomLeft) }
		set { snap(.bottomLeft, to: newValue) }
	}

	var bottomCenter: CGPoint {
		get { return getAnchor(.bottomCenter) }
		set { snap(.bottomCenter, to: newValue) }
	}

	var bottomRight: CGPoint {
		get { return getAnchor(.bottomRight) }
		set { snap(.bottomRight, to: newValue) }
	}
}
