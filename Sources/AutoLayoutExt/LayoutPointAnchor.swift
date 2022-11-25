//
//  LayoutPointAnchor.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

public struct LayoutPointAnchor {
    
    public let x: NSLayoutXAxisAnchor
    public let y: NSLayoutYAxisAnchor
}

public extension LayoutElement {
    
    var centerAnchor: LayoutPointAnchor {
        return LayoutPointAnchor(x: centerXAnchor, y: centerYAnchor)
    }
}

