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
			XCTAssertEqual($0.x, 123.5, accuracy: $0.x.ulp);
			XCTAssertEqual($0.y, -456.8, accuracy: $0.y.ulp);
		})

		// Interact with CGFloat
		(pt1 + 257.32).do({
			XCTAssertEqual($0.x, 133.82, accuracy: $0.x.ulp);
			XCTAssertEqual($0.y, 714.12, accuracy: $0.y.ulp);
		})
		(pt1 - 257.32).do({
			XCTAssertEqual($0.x, -380.82, accuracy: $0.x.ulp);
			XCTAssertEqual($0.y, 199.48, accuracy: $0.y.ulp);
		})
		(pt1 * 2.3).do({
			XCTAssertEqual($0.x, -284.05, accuracy: $0.x.ulp);
			XCTAssertEqual($0.y, 1050.64, accuracy: $0.y.ulp);
		})
		(pt1 / 2.5).do({
			XCTAssertEqual($0.x, -49.4, accuracy: $0.x.ulp);
			XCTAssertEqual($0.y, 182.72, accuracy: $0.y.ulp);
		})

		// Interact with CGPoint
		let pt2 = CGPoint(x: 418.34, y: -84.85)
		(pt1 + pt2).do({
			XCTAssertEqual($0.x, 294.84, accuracy: $0.x.ulp);
			XCTAssertEqual($0.y, 371.95, accuracy: $0.y.ulp);
		})
		(pt1 - pt2).do({
			XCTAssertEqual($0.x, -541.84, accuracy: $0.x.ulp);
			XCTAssertEqual($0.y, 541.65, accuracy: $0.y.ulp);
		})
    }
    
	func testCGSizeExtension() {
		let size1 = CGSize(width: 736.29, height: 2630.64)

		(-size1).do({
			XCTAssertEqual($0.width, -736.29, accuracy: $0.width.ulp);
			XCTAssertEqual($0.height, -2630.64, accuracy: $0.height.ulp);
		})

		// Interact with CGFloat
		(size1 + 257.32).do({
			XCTAssertEqual($0.width, 993.61, accuracy: $0.width.ulp);
			XCTAssertEqual($0.height, 2887.96, accuracy: $0.height.ulp);
		})
		(size1 - 257.32).do({
			XCTAssertEqual($0.width, 478.97, accuracy: $0.width.ulp);
			XCTAssertEqual($0.height, 2373.32, accuracy: $0.height.ulp);
		})
		(size1 * 7.4).do({
			XCTAssertEqual($0.width, 5448.546, accuracy: $0.width.ulp);
			XCTAssertEqual($0.height, 19466.736, accuracy: $0.height.ulp);
		})
		(size1 / 4.5).do({
			XCTAssertEqual($0.width, 163.62, accuracy: $0.width.ulp);
			XCTAssertEqual($0.height, 584.5866666666666, accuracy: $0.height.ulp);
		})
	}
}
