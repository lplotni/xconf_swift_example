import Foundation
import XCTest

class BoardTest: XCTestCase {
    
    class Board {
        let size = 25
        var position = 0
        
        func move(numberOfFields: Int) {
            let newPosition = position + numberOfFields
            
            if (newPosition < 0) {
                position = 0
            } else if (newPosition > size) {
                position = size
            } else {
                position = newPosition
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
    
    func testBoardMoveToStart() {
        let board = Board()
        
        XCTAssertEqual(board.position, 0)
        board.move(15)
        XCTAssertEqual(board.position, 15)
        board.move(-25)
        XCTAssertEqual(board.position, 0)
    }

    
}
