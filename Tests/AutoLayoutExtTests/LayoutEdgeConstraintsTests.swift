//
//  LayoutEdgeConstraintsTests.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import XCTest

final class LayoutEdgeConstraintsTests: XCTestCase {

    private var parentView: TestView!
    
    override func setUpWithError() throws {
        parentView = TestView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    }
    
    override func tearDownWithError() throws {
        parentView = nil
    }
    
    func testConstraintEdges() throws {
        
        NSLayoutConstraint.activate(parentView.subview.edgeAnchors.constraint(equalTo: parentView.edgeAnchors))
        parentView.layoutIfNeeded()
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 0, y: 0, width: 200, height: 100))
    }
    
    func testConstraintEdgesWithInset() throws {
        
        parentView.subview.edgeAnchors
            .constraint(equalTo: parentView.edgeAnchors)
            .inset(by: .init(top: 10, left: 8, bottom: 20, right: 12))
            .activate()
        
        parentView.layoutIfNeeded()
        
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 8, y: 10, width: 180, height: 70))
    }
}
