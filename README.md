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
        -CGPoint(x: -3, y: 5)                   // = CGPoint(x: 3, y: -5)
        CGPoint(x: -3, y: 5) + 4                // = CGPoint(x: 1, y: 9)
        CGPoint(x: -3, y: 5) - 4                // = CGPoint(x: -7, y: 1)
        CGPoint(x: -3, y: 5) * 3                // = CGPoint(x: -9, y: 15)
        CGPoint(x: -3, y: 5) / 2                // = CGPoint(x: -1.5, y: 2.5)
        ```
    - `CGSize`
        - Maths
        ```swift
        -CGSize(width: 20, height: 54)          // = CGSize(width: -20, height: -54)
        CGSize(width: 20, height: 54) + 10      // = CGSize(width: 30, height: 64)
        CGSize(width: 20, height: 54) - 10      // = CGSize(width: 10, height: 44)
        CGSize(width: 20, height: 54) * 3       // = CGSize(width: 60, height: 162)
        CGSize(width: 20, height: 54) / 2       // = CGSize(width: 10, height: 27)
        ```
    - `CGRect`
        - Anchor points, e.g. `topLeft`, `center`, `bottomRight`
        ```swift
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
        ```
        
        - Anchor point snapping to `CGPoint`
        ```swift
        let rect2 = CGRect(x: -20, y: 15, width: 75, height: 30)
        
        ```

        - Properties for returning the edges, e.g. `left`, `top`
        - Edge snapping to `CGFloat`
- `UIKit`
    - `UIEdgeInsets`
        - Negation
        - Convenience init which take [`EdgeInsets`](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html) in Flutter as reference
        - Properties for returning horizontal sum and vertical sum
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
