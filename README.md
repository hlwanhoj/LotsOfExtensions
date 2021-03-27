# LotsOfExtensions

[![CI Status](https://img.shields.io/travis/hlwanhoj/LotsOfExtensions.svg?style=flat)](https://travis-ci.org/hlwanhoj/LotsOfExtensions)
[![Version](https://img.shields.io/cocoapods/v/LotsOfExtensions.svg?style=flat)](https://cocoapods.org/pods/LotsOfExtensions)
[![License](https://img.shields.io/cocoapods/l/LotsOfExtensions.svg?style=flat)](https://cocoapods.org/pods/LotsOfExtensions)
[![Platform](https://img.shields.io/cocoapods/p/LotsOfExtensions.svg?style=flat)](https://cocoapods.org/pods/LotsOfExtensions)

A collection of swift extensions which save your code and time. 

## Features

The extensions are grouped according to their dependencies, which are
- `Foundation`
    - `CGPoint`
        - Maths

        ```swift
        -CGPoint(x: -3, y: 5)       // {x 3 y -5}
        CGPoint(x: -3, y: 5) + 4    // {x 1 y 9}
        CGPoint(x: -3, y: 5) - 4    // {x -7 y 1}
        CGPoint(x: -3, y: 5) * 3    // {x -9 y 15}
        CGPoint(x: -3, y: 5) / 2    // {x -1.5 y 2.5}
        ```
    - `CGSize`
        - Maths

        ```swift
        -CGSize(width: 20, height: 54)          // {w -20 h -54}
        CGSize(width: 20, height: 54) + 10      // {w 30 h 64}
        CGSize(width: 20, height: 54) - 10      // {w 10 h 44}
        CGSize(width: 20, height: 54) * 3       // {w 60 h 162}
        CGSize(width: 20, height: 54) / 2       // {w 10 h 27}
        ```
    - `CGRect`
        - Anchor points, e.g. `topLeft`, `center`, `bottomRight`

        ```swift
        let rect = CGRect(x: 5, y: -10, width: 50, height: 60)
        rect.topLeft        // {x 5 y -10}
        rect.topCenter      // {x 30 y -10}
        rect.topRight       // {x 55 y -10}
        rect.centerLeft     // {x 5 y 20}
        rect.center         // {x 30 y 20}
        rect.centerRight    // {x 55 y 20}
        rect.bottomLeft     // {x 5 y 50}
        rect.bottomCenter   // {x 30 y 50}
        rect.bottomRight    // {x 55 y 50}
        ```
        
        - Anchor point snapping

        ```swift
        let rect2 = CGRect(x: 25, y: 40, width: 100, height: 20)

        // Move `rect` such that it's top left is at `rect2`'s center
        rect.snapping(.topLeft, to: rect2.center)                   
        // {x 75 y 50 w 50 h 60}

        // Move `rect` such that it's bottom right is at `rect2`'s center left
        rect.snapping(.bottomRight, to: rect2.centerLeft)           
        // {x -25 y -10 w 50 h 60}
        ```

        - Edges, e.g. `left`, `top`

        ```swift
        rect.top        // -10
        rect.left       // 5
        rect.bottom     // 50
        rect.right      // 55
        ```

        - Edge snapping

        ```swift
        // Move `rect` such that it's left is on `rect2`'s right
        rect.snapping(.left, to: rect2.right)                       
        // {x 125 y -10 w 50 h 60}

        // Move `rect` such that it's bottom is at `rect2`'s bottom
        rect.snapping(.bottom, to: rect2.bottom)                    
        // {x 5 y 0 w 50 h 60}
        ```

    - `Bundle`
        - `Info.plist` values

        ```swift
        Bundle.main.releaseVersion                                  
        // returns CFBundleShortVersionString
        
        Bundle.main.buildVersion
        // returns CFBundleVersion
        
        Bundle.main.displayName                                     
        // returns CFBundleDisplayName
        
        Bundle.main.shortName
        // returns CFBundleName
        ```

- `UIKit`
    - `UIEdgeInsets`
        - Maths

        ```swift
        -UIEdgeInsets(top: 12, left: 6, bottom: -8, right: -10)     
        // {top: -12, left: -6, bottom: 8, right: 10}
        ```

        - Inits

        ```swift
        UIEdgeInsets.all(value: 3)                                  
        // {top: 3, left: 3, bottom: 3, right: 3}
        
        UIEdgeInsets.symmetric(vertical: 10)                        
        // {top: 10, left: 0, bottom: 10, right: 0}
        
        UIEdgeInsets.only(left: 7, bottom: 3)                       
        // {top: 0, left: 7, bottom: 3, right: 0}
        ```

        - Horizontal/Vertical sum

        ```swift
        let insets = UIEdgeInsets(top: 12, left: 6, bottom: 8, right: 10)
        insets.horizontals      // 16
        insets.verticals        // 20
        ```

    - `UIImage`
        - Creation from color
        - Scaling
        - Extending the canvas

## Requirements

- iOS 11.0+
- Xcode 12+
- Swift 5+

## Installation

LotsOfExtensions is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'LotsOfExtensions'
```

or install only the extension for particular dependency, for example the `Foundation`:

```ruby
pod 'LotsOfExtensions/Foundation'
```

## Author

hlwanhoj, hlwanhoj@gmail.com

## License

LotsOfExtensions is available under the MIT license. See the LICENSE file for more info.
