//
//  LayoutConstraintsConvertable.swift
//  
//
//  Created by Mikhail on 07.11.2022.
//

import UIKit

public protocol LayoutConstraintsConvertable {
    
    func asLayoutConstraints() -> [NSLayoutConstraint]
}

public extension LayoutConstraintsConvertable {
    
    func activate() {
        NSLayoutConstraint.activate(self)
    }
    
    func deactivate() {
        NSLayoutConstraint.deactivate(self)
    }
}

public extension NSLayoutConstraint {
    
    static func activate(_ layoutConstraintsConvertable: LayoutConstraintsConvertable) {
        activate(layoutConstraintsConvertable.asLayoutConstraints())
    }
    
    static func deactivate(_ layoutConstraintsConvertable: LayoutConstraintsConvertable) {
        deactivate(layoutConstraintsConvertable.asLayoutConstraints())
    }
}
