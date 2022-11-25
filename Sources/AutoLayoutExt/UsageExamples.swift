//
//  File.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import UIKit

let view1 = UIView()
let view2 = UIView()

// Constrain view edges to another view

NSLayoutConstraint.activate(view1.edgeAnchors.constraint(equalTo: view2.edgeAnchors))

// Changing inset after installing constraints

let edgeConstraints = view1.edgeAnchors.constraint(equalTo: view2.edgeAnchors)
NSLayoutConstraint.activate(edgeConstraints)
edgeConstraints.inset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)

// Directional edges with inset

NSLayoutConstraint.activate(
    view1.directionalEdgeAnchors
        .constraint(equalTo: view2.directionalEdgeAnchors)
        .inset(by: .init(top: 10, leading: 8, bottom: 20, trailing: 12))
)

// Constrain view center to another view center

NSLayoutConstraint.activate(view1.centerAnchor.constraint(equalTo: view2.centerAnchor))

// Constrain view size

NSLayoutConstraint.activate(view1.sizeAnchors.constraint(equalTo: CGSize(width: 320, height: 240)))

// Set constraints priority

NSLayoutConstraint.activate(view1.sizeAnchors.constraint(equalTo: view2.sizeAnchors).prioritized(.defaultLow))
