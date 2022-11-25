//
//  LayoutSizeAnchors.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

public struct LayoutSizeAnchors {
    
    public let widthAnchor: NSLayoutDimension
    public let heightAnchor: NSLayoutDimension
}

public extension LayoutElement {
    
    var sizeAnchors: LayoutSizeAnchors {
        LayoutSizeAnchors(widthAnchor: widthAnchor, heightAnchor: heightAnchor)
    }
}
