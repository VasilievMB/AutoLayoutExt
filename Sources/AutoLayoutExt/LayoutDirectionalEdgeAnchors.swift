//
//  LayoutDirectionalEdgeAnchors.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

public struct LayoutDirectionalEdgeAnchors {
    
    public let leadingAnchor: NSLayoutXAxisAnchor
    public let trailingAnchor: NSLayoutXAxisAnchor
    public let topAnchor: NSLayoutYAxisAnchor
    public let bottomAnchor: NSLayoutYAxisAnchor
}

public extension LayoutElement {
    
    var directionalEdgeAnchors: LayoutDirectionalEdgeAnchors {
        return LayoutDirectionalEdgeAnchors(leadingAnchor: leadingAnchor,
                                            trailingAnchor: trailingAnchor,
                                            topAnchor: topAnchor,
                                            bottomAnchor: bottomAnchor)
    }
}
