//
//  CGRect+Snapping.swift
//  LotsOfExtensions
//
//  Created by Ho Lun Wan on 9/1/2021.
//

import Foundation

extension CGRect {
	/// Anchor point in the unit coordinate space. The value of (0, 0) represents the top left of this rectangle, while (1, 1) represents the bottom right
	public struct Anchor {
		let x: CGFloat?
		let y: CGFloat?

		public static let topLeft: Anchor = .init(x: 0, y: 0)
		public static let topCenter: Anchor = .init(x: 0.5, y: 0)
		public static let topRight: Anchor = .init(x: 1, y: 0)
		public static let centerLeft: Anchor = .init(x: 0, y: 0.5)
		public static let center: Anchor = .init(x: 0.5, y: 0.5)
		public static let centerRight: Anchor = .init(x: 1, y: 0.5)
		public static let bottomLeft: Anchor = .init(x: 0, y: 1)
		public static let bottomCenter: Anchor = .init(x: 0.5, y: 1)
		public static let bottomRight: Anchor = .init(x: 1, y: 1)

		static let top: Anchor = .init(x: nil, y: 0)
		static let left: Anchor = .init(x: 0, y: nil)
		static let bottom: Anchor = .init(x: nil, y: 1)
		static let right: Anchor = .init(x: 1, y: nil)
	}
	
	//
	
	/**
	Move the rect by aligning the specified anchor to certain position.
	*/
	public mutating func snap(_ anchor: Anchor, to point: CGPoint) {
		origin = CGPoint(
			x: anchor.x.map({ point.x - $0 * width }) ?? origin.x,
			y: anchor.y.map({ point.y - $0 * height }) ?? origin.y
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
	
	/// Return a new rect by aligning the specified anchor of current rect to certain position
	public func snapping(_ anchor: Anchor, to point: CGPoint) -> CGRect {
		var rect = self
		rect.snap(anchor, to: point)
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

// MARK: -

extension CGRect {
	public enum Edge {
		case top, left, bottom, right
		
		var anchor: Anchor {
			switch self {
			case .top:
				return .top
			case .left:
				return .left
			case .bottom:
				return .bottom
			case .right:
				return .right
			}
		}
	}
	
	//

	/**
	Move the rect by aligning the specified edge to certain position
	*/
	public mutating func snap(_ edge: Edge, to position: CGFloat) {
		snap(edge.anchor, to: CGPoint(x: position, y: position))
	}
	
	/// Return a new rect by aligning the specified edge of current rect to certain position
	public func snapping(_ edge: Edge, to position: CGFloat) -> CGRect {
		var rect = self
		rect.snap(edge, to: position)
		return rect
	}
	
	//
	
	public var top: CGFloat {
		get { return getUnwrappedAnchor(.top).y }
		set { snap(.top, to: CGPoint(x: .nan, y: newValue)) }
	}
	
	public var left: CGFloat {
		get { return getUnwrappedAnchor(.left).x }
		set { snap(.left, to: CGPoint(x: newValue, y: .nan)) }
	}
	
	public var bottom: CGFloat {
		get { return getUnwrappedAnchor(.bottom).y }
		set { snap(.bottom, to: CGPoint(x: .nan, y: newValue)) }
	}
	
	public var right: CGFloat {
		get { return getUnwrappedAnchor(.right).x }
		set { snap(.right, to: CGPoint(x: newValue, y: .nan)) }
	}
}
