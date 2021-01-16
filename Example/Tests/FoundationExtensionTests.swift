import XCTest
import Then
import LotsOfExtensions

class FoundationExtensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCGPointExtension() {
		let pt1 = CGPoint(x: -123.5, y: 456.8)
		
		(-pt1).do({
			XCTAssertEqual($0.x, 123.5, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, -456.8, accuracy: $0.y.ulp)
		})

		// Interact with CGFloat
		(pt1 + 257.32).do({
			XCTAssertEqual($0.x, 133.82, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 714.12, accuracy: $0.y.ulp)
		})
		(pt1 - 257.32).do({
			XCTAssertEqual($0.x, -380.82, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 199.48, accuracy: $0.y.ulp)
		})
		(pt1 * 2.3).do({
			XCTAssertEqual($0.x, -284.05, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 1050.64, accuracy: $0.y.ulp)
		})
		(pt1 / 2.5).do({
			XCTAssertEqual($0.x, -49.4, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 182.72, accuracy: $0.y.ulp)
		})
    }
    
	func testCGSizeExtension() {
		let size1 = CGSize(width: 736.29, height: 2630.64)

		(-size1).do({
			XCTAssertEqual($0.width, -736.29, accuracy: $0.width.ulp)
			XCTAssertEqual($0.height, -2630.64, accuracy: $0.height.ulp)
		})

		// Interact with CGFloat
		(size1 + 257.32).do({
			XCTAssertEqual($0.width, 993.61, accuracy: $0.width.ulp)
			XCTAssertEqual($0.height, 2887.96, accuracy: $0.height.ulp)
		})
		(size1 - 257.32).do({
			XCTAssertEqual($0.width, 478.97, accuracy: $0.width.ulp)
			XCTAssertEqual($0.height, 2373.32, accuracy: $0.height.ulp)
		})
		(size1 * 7.4).do({
			XCTAssertEqual($0.width, 5448.546, accuracy: $0.width.ulp)
			XCTAssertEqual($0.height, 19466.736, accuracy: $0.height.ulp)
		})
		(size1 / 4.5).do({
			XCTAssertEqual($0.width, 163.62, accuracy: $0.width.ulp)
			XCTAssertEqual($0.height, 584.5866666666666, accuracy: $0.height.ulp)
		})
	}
	
	func testCGRectExtension() {
		// Snapping
		let rect2 = CGRect(origin: CGPoint(x: 42.6, y: -83.5), size: CGSize(width: 253.3, height: 784.2))
		rect2.topLeft.do({
			XCTAssertEqual($0.x, 42.6, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, -83.5, accuracy: $0.y.ulp)
		})
		rect2.topCenter.do({
			XCTAssertEqual($0.x, 169.25, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, -83.5, accuracy: $0.y.ulp)
		})
		rect2.topRight.do({
			XCTAssertEqual($0.x, 295.9, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, -83.5, accuracy: $0.y.ulp)
		})
		rect2.centerLeft.do({
			XCTAssertEqual($0.x, 42.6, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 308.6, accuracy: $0.y.ulp)
		})
		rect2.center.do({
			XCTAssertEqual($0.x, 169.25, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 308.6, accuracy: $0.y.ulp)
		})
		rect2.centerRight.do({
			XCTAssertEqual($0.x, 295.9, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 308.6, accuracy: $0.y.ulp)
		})
		rect2.bottomLeft.do({
			XCTAssertEqual($0.x, 42.6, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 700.7, accuracy: $0.y.ulp)
		})
		rect2.bottomCenter.do({
			XCTAssertEqual($0.x, 169.25, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 700.7, accuracy: $0.y.ulp)
		})
		rect2.bottomRight.do({
			XCTAssertEqual($0.x, 295.9, accuracy: $0.x.ulp)
			XCTAssertEqual($0.y, 700.7, accuracy: $0.y.ulp)
		})
		
		XCTAssertEqual(rect2.top, -83.5, accuracy: rect2.top.ulp)
		XCTAssertEqual(rect2.left, 42.6, accuracy: rect2.left.ulp)
		XCTAssertEqual(rect2.bottom, 700.7, accuracy: rect2.bottom.ulp)
		XCTAssertEqual(rect2.right, 295.9, accuracy: rect2.right.ulp)

		
		let rect3 = CGRect(origin: CGPoint(x: -842.7, y: 462.1), size: CGSize(width: 502.3, height: 32.6))
		rect2.snapping(.bottomRight, to: rect3.topLeft).do({
			let pt1 = $0.bottomRight
			let pt2 = rect3.topLeft
			XCTAssertEqual(pt1.x, pt2.x, accuracy: pt1.x.ulp)
			XCTAssertEqual(pt1.y, pt2.y, accuracy: pt1.y.ulp)
		})
		rect2.snapping(.bottomLeft, to: rect3.topRight).do({
			let pt1 = $0.bottomLeft
			let pt2 = rect3.topRight
			XCTAssertEqual(pt1.x, pt2.x, accuracy: pt1.x.ulp)
			XCTAssertEqual(pt1.y, pt2.y, accuracy: pt1.y.ulp)
		})
		rect2.snapping(.topRight, to: rect3.bottomLeft).do({
			let pt1 = $0.topRight
			let pt2 = rect3.bottomLeft
			XCTAssertEqual(pt1.x, pt2.x, accuracy: pt1.x.ulp)
			XCTAssertEqual(pt1.y, pt2.y, accuracy: pt1.y.ulp)
		})
		rect2.snapping(.topLeft, to: rect3.bottomRight).do({
			let pt1 = $0.topLeft
			let pt2 = rect3.bottomRight
			XCTAssertEqual(pt1.x, pt2.x, accuracy: pt1.x.ulp)
			XCTAssertEqual(pt1.y, pt2.y, accuracy: pt1.y.ulp)
		})
		rect2.snapping(.top, to: rect3.bottom).do({
			let top = $0.top
			XCTAssertEqual(top, rect3.bottom, accuracy: top.ulp)
			XCTAssertEqual($0.left, rect2.left, accuracy: $0.left.ulp)
		})
		rect2.snapping(.left, to: rect3.right).do({
			let left = $0.left
			XCTAssertEqual(left, rect3.right, accuracy: left.ulp)
			XCTAssertEqual($0.top, rect2.top, accuracy: $0.top.ulp)
		})
		rect2.snapping(.bottom, to: rect3.top).do({
			let bottom = $0.bottom
			XCTAssertEqual(bottom, rect3.top, accuracy: bottom.ulp)
			XCTAssertEqual($0.left, rect2.left, accuracy: $0.left.ulp)
		})
		rect2.snapping(.right, to: rect3.left).do({
			let right = $0.right
			XCTAssertEqual(right, rect3.left, accuracy: right.ulp)
			XCTAssertEqual($0.top, rect2.top, accuracy: $0.top.ulp)
		})
	}
}
