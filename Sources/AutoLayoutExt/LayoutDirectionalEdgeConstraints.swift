//
//  File.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

public class LayoutDirectionalEdgeConstraints {
    
    public let leading: NSLayoutConstraint
    public let trailing: NSLayoutConstraint
    public let top: NSLayoutConstraint
    public let bottom: NSLayoutConstraint
    
    init(leading: NSLayoutConstraint, trailing: NSLayoutConstraint, top: NSLayoutConstraint, bottom: NSLayoutConstraint) {
        self.leading = leading
        self.trailing = trailing
        self.top = top
        self.bottom = bottom
    }
    
    public var inset: NSDirectionalEdgeInsets {
        get {
            NSDirectionalEdgeInsets(top: top.constant,
                                    leading: leading.constant,
                                    bottom: bottom.constant,
                                    trailing: trailing.constant)
        }
        set {
            leading.constant = newValue.leading
            trailing.constant = newValue.trailing
            top.constant = newValue.top
            bottom.constant = newValue.bottom
        }
    }
    
    @discardableResult
    public func inset(by inset: NSDirectionalEdgeInsets) -> Self {
        self.inset = inset
        return self
    }
}

extension LayoutDirectionalEdgeConstraints: LayoutConstraintsConvertable {
    
    public func asLayoutConstraints() -> [NSLayoutConstraint] {
        return [leading, trailing, top, bottom]
    }
}

public extension LayoutDirectionalEdgeAnchors {
    
    func constraint(equalTo edges: LayoutDirectionalEdgeAnchors) -> LayoutDirectionalEdgeConstraints {
        return LayoutDirectionalEdgeConstraints(
            leading: leadingAnchor.constraint(equalTo: edges.leadingAnchor),
            trailing: edges.trailingAnchor.constraint(equalTo: trailingAnchor),
            top: topAnchor.constraint(equalTo: edges.topAnchor),
            bottom: edges.bottomAnchor.constraint(equalTo: bottomAnchor)
        )
    }
}
