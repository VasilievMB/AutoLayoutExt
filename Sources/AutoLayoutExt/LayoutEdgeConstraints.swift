//
//  LayoutEdgesConstraints.swift
//  
//
//  Created by Mikhail on 07.11.2022.
//

import UIKit

public class LayoutEdgeConstraints {
    
    public let left: NSLayoutConstraint
    public let right: NSLayoutConstraint
    public let top: NSLayoutConstraint
    public let bottom: NSLayoutConstraint
    
    init(left: NSLayoutConstraint, right: NSLayoutConstraint, top: NSLayoutConstraint, bottom: NSLayoutConstraint) {
        self.left = left
        self.right = right
        self.top = top
        self.bottom = bottom
    }
    
    public var inset: UIEdgeInsets {
        get {
            UIEdgeInsets(
                top: top.constant,
                left: left.constant,
                bottom: bottom.constant,
                right: right.constant
            )
        }
        set {
            left.constant = newValue.left
            right.constant = newValue.right
            top.constant = newValue.top
            bottom.constant = newValue.bottom
        }
    }
    
    @discardableResult
    public func inset(by inset: UIEdgeInsets) -> Self {
        self.inset = inset
        return self
    }
}

extension LayoutEdgeConstraints: LayoutConstraintsConvertable {
    
    public func asLayoutConstraints() -> [NSLayoutConstraint] {
        return [`left`, `right`, top, bottom]
    }
}

public extension LayoutEdgeAnchors {
    
    func constraint(equalTo edges: LayoutEdgeAnchors) -> LayoutEdgeConstraints {
        return LayoutEdgeConstraints(
            left: leftAnchor.constraint(equalTo: edges.leftAnchor),
            right: edges.rightAnchor.constraint(equalTo: rightAnchor),
            top: topAnchor.constraint(equalTo: edges.topAnchor),
            bottom: edges.bottomAnchor.constraint(equalTo: bottomAnchor)
        )
    }
}
