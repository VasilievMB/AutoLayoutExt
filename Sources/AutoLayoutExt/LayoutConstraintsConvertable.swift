//
//  LayoutConstraintsConvertable.swift
//  
//
//  Created by Mikhail on 07.11.2022.
//

import UIKit

protocol LayoutConstraintsConvertable {
    
    func asLayoutConstraints() -> [NSLayoutConstraint]
}

extension LayoutConstraintsConvertable {
    
    func activate() {
        NSLayoutConstraint.activate(self)
    }
    
    func deactivate() {
        NSLayoutConstraint.deactivate(self)
    }
}

extension NSLayoutConstraint {
    
    static func activate(_ layoutConstraintsConvertable: LayoutConstraintsConvertable) {
        activate(layoutConstraintsConvertable.asLayoutConstraints())
    }
    
    static func deactivate(_ layoutConstraintsConvertable: LayoutConstraintsConvertable) {
        deactivate(layoutConstraintsConvertable.asLayoutConstraints())
    }
}
