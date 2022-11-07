//
//  LayoutEdges.swift
//  
//
//  Created by Mikhail on 07.11.2022.
//

import UIKit

struct LayoutEdges {
    
    let leftAnchor: NSLayoutXAxisAnchor
    let rightAnchor: NSLayoutXAxisAnchor
    let topAnchor: NSLayoutYAxisAnchor
    let bottomAnchor: NSLayoutYAxisAnchor
}

extension LayoutElement {
    
    var edges: LayoutEdges {
        return LayoutEdges(leftAnchor: leftAnchor,
                           rightAnchor: rightAnchor,
                           topAnchor: topAnchor,
                           bottomAnchor: bottomAnchor)
    }
}
