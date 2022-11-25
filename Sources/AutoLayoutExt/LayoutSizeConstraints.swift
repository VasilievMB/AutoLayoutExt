//
//  LayoutSizeConstraints.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

public class LayoutSizeConstraints {
    
    public let width: NSLayoutConstraint
    public let height: NSLayoutConstraint
    
    init(width: NSLayoutConstraint, height: NSLayoutConstraint) {
        self.width = width
        self.height = height
    }
}

extension LayoutSizeConstraints: LayoutConstraintsConvertable {
    
    public func asLayoutConstraints() -> [NSLayoutConstraint] {
        return [width, height]
    }
}

public extension LayoutSizeAnchors {
    
    func constraint(equalTo size: CGSize) -> LayoutSizeConstraints {
        LayoutSizeConstraints(
            width: widthAnchor.constraint(equalToConstant: size.width),
            height: heightAnchor.constraint(equalToConstant: size.height)
        )
    }
    
    func constraint(equalTo sizeAnchors: LayoutSizeAnchors) -> LayoutSizeConstraints {
        LayoutSizeConstraints(
            width: widthAnchor.constraint(equalTo: sizeAnchors.widthAnchor),
            height: heightAnchor.constraint(equalTo: sizeAnchors.heightAnchor)
        )
    }
}
