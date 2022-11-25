//
//  LayoutPrioritizable.swift
//  
//
//  Created by Mikhail on 07.11.2022.
//

import UIKit
 
protocol LayoutPrioritizable {
    
    mutating func prioritize(_ priority: UILayoutPriority)
}

extension LayoutPrioritizable {
    
    func prioritized(_ priority: UILayoutPriority) -> Self {
        var result = self
        result.prioritize(priority)
        return result
    }
}

extension NSLayoutConstraint: LayoutPrioritizable {
    
    func prioritize(_ priority: UILayoutPriority) {
        self.priority = priority
    }
}

extension LayoutPrioritizable where Self: LayoutConstraintsConvertable {
    
    func prioritize(_ priority: UILayoutPriority) {
        asLayoutConstraints().forEach { $0.priority = priority }
    }
}
