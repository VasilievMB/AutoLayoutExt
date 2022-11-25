//
//  File.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

class TestView: UIView {
    
    let subview = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    private func configure() {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
    }
}
