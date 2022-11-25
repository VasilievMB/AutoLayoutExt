//
//  LayoutPointConstraintsTests.swift
//  
//
//  Created by Mikhail on 25.11.2022.
//

import XCTest
@testable import AutoLayoutExt

final class LayoutPointConstraintsTests: XCTestCase {

    private var parentView: TestView!
    
    override func setUpWithError() throws {
        parentView = TestView(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    }
    
    override func tearDownWithError() throws {
        parentView = nil
    }
    
    func testConstraintCenter() throws {
        
        NSLayoutConstraint.activate(parentView.subview.centerAnchor.constraint(equalTo: parentView.centerAnchor))
        
        NSLayoutConstraint.activate([
            parentView.subview.widthAnchor.constraint(equalToConstant: 50),
            parentView.subview.heightAnchor.constraint(equalToConstant: 50),
            ])
        
        parentView.layoutIfNeeded()
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 75, y: 25, width: 50, height: 50))
    }
    
    func testConstraintCenterWithOffset() throws {
        
        NSLayoutConstraint.activate(
            parentView.subview.centerAnchor
            .constraint(equalTo: parentView.centerAnchor)
            .offset(by: UIOffset(horizontal: 10, vertical: 20))
        )
        
        NSLayoutConstraint.activate([
            parentView.subview.widthAnchor.constraint(equalToConstant: 50),
            parentView.subview.heightAnchor.constraint(equalToConstant: 50),
            ])
        
        parentView.layoutIfNeeded()
        XCTAssertEqual(parentView.subview.frame, CGRect(x: 85, y: 45, width: 50, height: 50))
    }
}
