import Foundation
import XCTest

class BoardTest: XCTestCase {
    
    class Board {
        let size = 25
    }
    
    func testHasRightSize() {
        let board = Board()
        XCTAssertEqual(board.size, 25)
    }
    
}
