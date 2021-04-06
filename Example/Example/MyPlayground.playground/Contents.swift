import UIKit
import LotsOfExtensions

// Foundation

// CGPoint


-CGPoint(x: -3, y: 5)                   // = CGPoint(x: 3, y: -5)
CGPoint(x: -3, y: 5) + 4                // = CGPoint(x: 1, y: 9)
CGPoint(x: -3, y: 5) - 4                // = CGPoint(x: -7, y: 1)
CGPoint(x: -3, y: 5) * 3                // = CGPoint(x: -9, y: 15)
CGPoint(x: -3, y: 5) / 2                // = CGPoint(x: -1.5, y: 2.5)


// CGSize


-CGSize(width: 20, height: 54)          // = CGSize(width: -20, height: -54)
CGSize(width: 20, height: 54) + 10      // = CGSize(width: 30, height: 64)
CGSize(width: 20, height: 54) - 10      // = CGSize(width: 10, height: 44)
CGSize(width: 20, height: 54) * 3       // = CGSize(width: 60, height: 162)
CGSize(width: 20, height: 54) / 2       // = CGSize(width: 10, height: 27)
CGSize.square(45)

// CGRect


let rect = CGRect(x: 5, y: -10, width: 50, height: 60)
rect.topLeft                            // = CGPoint(x: 5, y: -10)
rect.topCenter                          // = CGPoint(x: 30, y: -10)
rect.topRight                           // = CGPoint(x: 55, y: -10)
rect.centerLeft                         // = CGPoint(x: 5, y: 20)
rect.center                             // = CGPoint(x: 30, y: 20)
rect.centerRight                        // = CGPoint(x: 55, y: 20)
rect.bottomLeft                         // = CGPoint(x: 5, y: 50)
rect.bottomCenter                       // = CGPoint(x: 30, y: 50)
rect.bottomRight                        // = CGPoint(x: 55, y: 50)


// CGRect anchor point snapping


let rect2 = CGRect(x: 25, y: 40, width: 100, height: 20)

// Move `rect` such that it's top left is at `rect2`'s center
rect.snapping(.topLeft, to: rect2.center)

// Move `rect` such that it's bottom right is at `rect2`'s center left
rect.snapping(.bottomRight, to: rect2.centerLeft)


// CGRect edge snapping

rect.top
rect.left
rect.bottom
rect.right

// Move `rect` such that it's left is on `rect2`'s right
rect.snapping(.left, to: rect2.right)

// Move `rect` such that it's bottom is at `rect2`'s bottom
rect.snapping(.bottom, to: rect2.bottom)

// Collection

let arr = [1, 2, 3, 4]
arr[safe: 5]
arr[safe: -1]
arr.safelyRemoving(at: 3)
arr.safelyRemoving(at: 3)

// Bundle


Bundle.main.releaseVersion
Bundle.main.buildVersion
Bundle.main.displayName
Bundle.main.shortName


// UIKit


-UIEdgeInsets(top: 12, left: 6, bottom: -8, right: -10)
UIEdgeInsets.all(value: 3)
UIEdgeInsets.symmetric(vertical: 10)
UIEdgeInsets.only(left: 7, bottom: 3)

let insets = UIEdgeInsets(top: 12, left: 6, bottom: 8, right: 10)
insets.horizontals
insets.verticals
