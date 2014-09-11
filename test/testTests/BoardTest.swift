import Foundation
import XCTest

class BoardTest: XCTestCase {
    
    class Board {
        let size = 25
        var position = 0
        
        func move(numberOfFields: Int) {
            if (position + numberOfFields <= size) {
                position += numberOfFields
            } else {
                position = size
            }
        }
    }
    
    func testHasRightSize() {
        let board = Board()
        XCTAssertEqual(board.size, 25)
    }
    
    func testBoardMove() {
        
        let board = Board()
        
        XCTAssertEqual(board.position, 0)
        board.move(2)
        XCTAssertEqual(board.position, 2)
        board.move(3)
        XCTAssertEqual(board.position, 5)
        board.move(5)
        XCTAssertEqual(board.position, 10)
    }
    
    func testBoardMoveUntilEnd() {
        
        let board = Board()
        
        XCTAssertEqual(board.position, 0)
        board.move(26)
        XCTAssertEqual(board.position, 25)
    }

    
}
