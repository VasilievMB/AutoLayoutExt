//
//  LayoutSizeConstraintsTests.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import XCTest
@testable import AutoLayoutExt

final class LayoutSizeConstraintsTests: XCTestCase {
    
    private var parentView: TestView!
    
    override func setUpWithError() throws {
        parentView = TestView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    }
    
    override func tearDownWithError() throws {
        parentView = nil
    }
    
    func testConstraintSizeToConstant() throws {
        
        NSLayoutConstraint.activate([
            parentView.subview.leftAnchor.constraint(equalTo: parentView.leftAnchor),
            parentView.subview.topAnchor.constraint(equalTo: parentView.topAnchor),
        ])
        
        NSLayoutConstraint.activate(parentView.subview.sizeAnchors.constraint(equalTo: CGSize(width: 100, height: 50)))
        
        parentView.layoutIfNeeded()
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 0, y: 0, width: 100, height: 50))
    }
    
    func testConstraintSizeToSizeAnchors() throws {
        
        NSLayoutConstraint.activate([
            parentView.subview.leftAnchor.constraint(equalTo: parentView.leftAnchor),
            parentView.subview.topAnchor.constraint(equalTo: parentView.topAnchor),
        ])
        
        NSLayoutConstraint.activate(parentView.subview.sizeAnchors.constraint(equalTo: parentView.sizeAnchors))
        
        parentView.layoutIfNeeded()
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 0, y: 0, width: 200, height: 100))
    }
}
