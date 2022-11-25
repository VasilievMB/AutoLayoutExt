//
//  LayoutPointConstraints.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

public class LayoutPointConstraints: LayoutPrioritizable {
    
    public let x: NSLayoutConstraint
    public let y: NSLayoutConstraint
    
    init(x: NSLayoutConstraint, y: NSLayoutConstraint) {
        self.x = x
        self.y = y
    }
    
    public var offset: UIOffset {
        get {
            UIOffset(horizontal: x.constant, vertical: y.constant)
        }
        set {
            x.constant = newValue.horizontal
            y.constant = newValue.vertical
        }
    }
    
    @discardableResult
    public func offset(by offset: UIOffset) -> Self {
        self.offset = offset
        return self
    }
}

extension LayoutPointConstraints: LayoutConstraintsConvertable {
    
    public func asLayoutConstraints() -> [NSLayoutConstraint] {
        return [x, y]
    }
}

public extension LayoutPointAnchor {
    
    func constraint(equalTo point: LayoutPointAnchor) -> LayoutPointConstraints {
        LayoutPointConstraints(
            x: x.constraint(equalTo: point.x),
            y: y.constraint(equalTo: point.y)
        )
    }
}
