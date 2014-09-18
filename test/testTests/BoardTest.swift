import Foundation
import XCTest

class BoardTest: XCTestCase {
    
    class Board {
        let size = 25
     
    }
    
    var board: Board!
    
    override func setUp() {
        board = Board()
    }
    
    func testHasRightSize() {
        XCTAssertEqual(board.size, 25)
    }
}