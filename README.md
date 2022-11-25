# AutoLayoutExt

A set of classes to make doing autolayout in code a little bit easier.

## Installation

Go to Xcode > File > Add Packages..., enter the URL to this repository, select dependency rule and project and click 'Add Package'.

## Usage

```swift
NSLayoutConstraint.activate(
    view1.directionalEdgeAnchors
        .constraint(equalTo: view2.directionalEdgeAnchors)
        .inset(by: .init(top: 10, leading: 8, bottom: 20, trailing: 12))
)
```

## Licence

AutoLayoutExt is available under the MIT license. See the LICENSE file for more info.
