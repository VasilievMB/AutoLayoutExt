//
//  LayoutEdges.swift
//  
//
//  Created by Mikhail on 07.11.2022.
//

import UIKit

public struct LayoutEdges {
    
    public let leftAnchor: NSLayoutXAxisAnchor
    public let rightAnchor: NSLayoutXAxisAnchor
    public let topAnchor: NSLayoutYAxisAnchor
    public let bottomAnchor: NSLayoutYAxisAnchor
}

public extension LayoutElement {
    
    var edges: LayoutEdges {
        return LayoutEdges(leftAnchor: leftAnchor,
                           rightAnchor: rightAnchor,
                           topAnchor: topAnchor,
                           bottomAnchor: bottomAnchor)
    }
}
