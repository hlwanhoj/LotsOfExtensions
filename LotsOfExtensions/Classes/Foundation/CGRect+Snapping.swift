//
//  CGRect+Snapping.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 9/1/2021.
//

import Foundation

extension CGRect {
	/// Anchor point in the unit coordinate space. The value of (0, 0) represents the top left of this rectangle, while (1, 1) represents the bottom right
	public enum Anchor {
		case topLeft, topCenter, topRight
		case centerLeft, center, centerRight
		case bottomLeft, bottomCenter, bottomRight
		case any(x: CGFloat, y: CGFloat)
	
		var rawValue: (x: CGFloat?, y: CGFloat?) {
			switch self {
			case .topLeft:
			  return (x: 0, y: 0)
			case .topCenter:
			  return (x: 0.5, y: 0)
			case .topRight:
			  return (x: 1, y: 0)
			case .centerLeft:
			  return (x: 0, y: 0.5)
			case .center:
			  return (x: 0.5, y: 0.5)
			case .centerRight:
			  return (x: 1, y: 0.5)
			case .bottomLeft:
			  return (x: 0, y: 1)
			case .bottomCenter:
			  return (x: 0.5, y: 1)
			case .bottomRight:
			  return (x: 1, y: 1)
			case let .any(x, y):
			  let _x = max(0, min(1, x))
			  let _y = max(0, min(1, y))
			  return (x: _x, y: _y)
			}
		}

		var x: CGFloat? { rawValue.x }
		var y: CGFloat? { rawValue.y }
	}

	//
	
	/// Move the rect by aligning the specified anchor to certain position
	public mutating func snap(_ anchor: Anchor, to pt: CGPoint) {
		origin = CGPoint(
			x: anchor.x.map({ pt.x - $0 * width }) ?? origin.x,
			y: anchor.y.map({ pt.y - $0 * height }) ?? origin.y
		)
	}

	//

	/// Return the actual position of certain anchor point in this rectangle
	private func getAnchor(_ anchor: Anchor) -> (x: CGFloat?, y: CGFloat?) {
		return (
			x: anchor.x.map({ origin.x + $0 * width }),
			y: anchor.y.map({ origin.y + $0 * height })
		)
	}

	private func getUnwrappedAnchor(_ anchor: Anchor) -> CGPoint {
		let pt = getAnchor(anchor)
		return CGPoint(x: pt.x ?? .nan, y: pt.y ?? .nan)
	}

	/// Move the rect by aligning the specified anchor to certain position
	public func snapping(_ anchor: Anchor, to pt: CGPoint) -> CGRect {
		var rect = self
		rect.snap(anchor, to: pt)
		return rect
	}

	//
	
	public var topLeft: CGPoint {
		get { return getUnwrappedAnchor(.topLeft) }
		set { snap(.topLeft, to: newValue) }
	}

	public var topCenter: CGPoint {
		get { return getUnwrappedAnchor(.topCenter) }
		set { snap(.topCenter, to: newValue) }
	}

	public var topRight: CGPoint {
		get { return getUnwrappedAnchor(.topRight) }
		set { snap(.topRight, to: newValue) }
	}

	public var centerLeft: CGPoint {
		get { return getUnwrappedAnchor(.centerLeft) }
		set { snap(.centerLeft, to: newValue) }
	}

	public var center: CGPoint {
		get { return getUnwrappedAnchor(.center) }
		set { snap(.center, to: newValue) }
	}

	public var centerRight: CGPoint {
		get { return getUnwrappedAnchor(.centerRight) }
		set { snap(.centerRight, to: newValue) }
	}

	public var bottomLeft: CGPoint {
		get { return getUnwrappedAnchor(.bottomLeft) }
		set { snap(.bottomLeft, to: newValue) }
	}

	public var bottomCenter: CGPoint {
		get { return getUnwrappedAnchor(.bottomCenter) }
		set { snap(.bottomCenter, to: newValue) }
	}

	public var bottomRight: CGPoint {
		get { return getUnwrappedAnchor(.bottomRight) }
		set { snap(.bottomRight, to: newValue) }
	}
}
