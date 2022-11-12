//
//  LayoutEdgesConstraints.swift
//  
//
//  Created by Mikhail on 07.11.2022.
//

import UIKit

public struct LayoutEdgesConstraints {
    
    public let left: NSLayoutConstraint
    public let right: NSLayoutConstraint
    public let top: NSLayoutConstraint
    public let bottom: NSLayoutConstraint
    
    public func inset(_ inset: UIEdgeInsets) -> LayoutEdgesConstraints {
        left.constant = inset.left
        right.constant = inset.right
        top.constant = inset.top
        bottom.constant = inset.bottom
        return self
    }
}

extension LayoutEdgesConstraints: LayoutConstraintsConvertable {
    
    public func asLayoutConstraints() -> [NSLayoutConstraint] {
        return [left, right, top, bottom]
    }
}

public extension LayoutEdges {
    
    func constraint(equalTo edges: LayoutEdges) -> LayoutEdgesConstraints {
        return LayoutEdgesConstraints(
            left: leftAnchor.constraint(equalTo: edges.leftAnchor),
            right: edges.rightAnchor.constraint(equalTo: rightAnchor),
            top: topAnchor.constraint(equalTo: edges.topAnchor),
            bottom: edges.bottomAnchor.constraint(equalTo: bottomAnchor)
        )
    }
}
