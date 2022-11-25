# AutoLayoutExt

A set of classes to make doing autolayout in code a little bit easier.

## Installation

Go to Xcode > File > Add Packages..., enter the URL to this repository, select dependency rule and project and click 'Add Package'.

## Usage

### Constrain view edges to another view
```swift
NSLayoutConstraint.activate(view1.edgeAnchors.constraint(equalTo: view2.edgeAnchors))
```

### Changing inset after installing constraints
```swift
let edgeConstraints = view1.edgeAnchors.constraint(equalTo: view2.edgeAnchors)
NSLayoutConstraint.activate(edgeConstraints)
edgeConstraints.inset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
```

### Directional edge constraints with inset
```swift
NSLayoutConstraint.activate(
    view1.directionalEdgeAnchors
        .constraint(equalTo: view2.directionalEdgeAnchors)
        .inset(by: .init(top: 10, leading: 8, bottom: 20, trailing: 12))
)
```

### Constrain view center to another view center
```swift
NSLayoutConstraint.activate(view1.centerAnchor.constraint(equalTo: view2.centerAnchor))
```

### Constrain view size
```swift
NSLayoutConstraint.activate(view1.sizeAnchors.constraint(equalTo: CGSize(width: 320, height: 240)))
```

### Create constraints and set constraints priority in 1 line
```swift
NSLayoutConstraint.activate(view1.sizeAnchors.constraint(equalTo: view2.sizeAnchors).prioritized(.defaultLow))
```

## Licence

AutoLayoutExt is available under the MIT license. See the LICENSE file for more info.
