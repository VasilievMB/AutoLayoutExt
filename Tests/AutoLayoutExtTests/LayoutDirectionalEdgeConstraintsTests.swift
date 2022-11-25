//
//  LayoutDirectionalEdgeConstraintsTests.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import XCTest
@testable import AutoLayoutExt

final class LayoutDirectionalEdgeConstraintsTests: XCTestCase {

    private var parentView: TestView!
    
    override func setUpWithError() throws {
        parentView = TestView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    }
    
    override func tearDownWithError() throws {
        parentView = nil
    }
    
    func testConstraintEdges() throws {
        
        NSLayoutConstraint.activate(parentView.subview.directionalEdgeAnchors.constraint(equalTo: parentView.directionalEdgeAnchors))
        parentView.layoutIfNeeded()
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 0, y: 0, width: 200, height: 100))
    }
    
    func testConstraintEdgesWithInsetLeftToRight() throws {
        
        parentView.semanticContentAttribute = .forceLeftToRight
        
        parentView.subview.directionalEdgeAnchors
            .constraint(equalTo: parentView.directionalEdgeAnchors)
            .inset(by: .init(top: 10, leading: 8, bottom: 20, trailing: 12))
            .activate()
        
        parentView.layoutIfNeeded()
        
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 8, y: 10, width: 180, height: 70))
    }
    
    func testConstraintEdgesWithInsetRightToLeft() throws {
        
        parentView.semanticContentAttribute = .forceRightToLeft
        
        parentView.subview.directionalEdgeAnchors
            .constraint(equalTo: parentView.directionalEdgeAnchors)
            .inset(by: .init(top: 10, leading: 8, bottom: 20, trailing: 12))
            .activate()
        
        parentView.layoutIfNeeded()
        
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 12, y: 10, width: 180, height: 70))
    }
}
