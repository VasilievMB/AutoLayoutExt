//
//  Prioritizable.swift
//  
//
//  Created by Mikhail on 07.11.2022.
//

import UIKit
 
protocol Prioritizable {
    
    mutating func prioritize(_ priority: UILayoutPriority)
}

extension Prioritizable {
    
    func prioritized(_ priority: UILayoutPriority) -> Self {
        var result = self
        result.prioritize(priority)
        return result
    }
}

extension NSLayoutConstraint: Prioritizable {
    
    func prioritize(_ priority: UILayoutPriority) {
        self.priority = priority
    }
}

extension Prioritizable where Self: LayoutConstraintsConvertable {
    
    func prioritize(_ priority: UILayoutPriority) {
        asLayoutConstraints().forEach { $0.priority = priority }
    }
}
