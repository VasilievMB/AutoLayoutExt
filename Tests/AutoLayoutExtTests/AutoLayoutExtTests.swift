import XCTest
@testable import AutoLayoutExt

final class AutoLayoutExtTests: XCTestCase {
    
    private var parentView: UIView!
    private var subview: UIView!
    
    override func setUpWithError() throws {
        parentView = UIView()
        parentView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        
        subview = UIView()
        subview.translatesAutoresizingMaskIntoConstraints = false
        
        parentView.addSubview(subview)
    }
    
    override func tearDownWithError() throws {
        parentView = nil
        subview = nil
    }
    
    func testConstraintEdges() throws {
        
        subview.edges
            .constraint(equalTo: parentView.edges)
            .activate()
        
        parentView.layoutIfNeeded()
        
        XCTAssertEqual(subview.frame, CGRect(x: 0, y: 0, width: 200, height: 100))
    }
    
    func testConstraintEdgesWithInset() throws {
        
        subview.edges
            .constraint(equalTo: parentView.edges)
            .inset(.init(top: 10, left: 8, bottom: 20, right: 12))
            .activate()
        
        parentView.layoutIfNeeded()
        
        XCTAssertEqual(subview.frame, CGRect(x: 8, y: 10, width: 180, height: 70))
    }
}
