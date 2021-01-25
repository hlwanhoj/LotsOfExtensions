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
        - Negation
        - +, -, *, / with `CGFloat`
    - `CGSize`
        - Negation
        - +, -, *, / with `CGFloat`
    - `CGRect`
        - Properties for returning the anchor points, e.g. `topLeft`, `center`, `bottomRight`
        - Anchor point snapping to `CGPoint`
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
