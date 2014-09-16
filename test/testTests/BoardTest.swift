import Foundation
import XCTest

class BoardTest: XCTestCase {
    
    class Board {
        let size = 25
        let snakes: [(Int,Int)] = [(24, 1), (24, 1), (24, 1), (24, 1)]
        
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
    
    var board: Board!
    
    override func setUp() {
        board = Board()
    }
    
    func testHasRightSize() {
        XCTAssertEqual(board.size, 25)
    }
    
    func testBoardMove() {
        XCTAssertEqual(board.position, 0)
        board.move(2)
        XCTAssertEqual(board.position, 2)
        board.move(3)
        XCTAssertEqual(board.position, 5)
        board.move(5)
        XCTAssertEqual(board.position, 10)
    }
    
    func testBoardMoveUntilEnd() {
        XCTAssertEqual(board.position, 0)
        board.move(26)
        XCTAssertEqual(board.position, 25)
    }
    
    func testBoardMoveToStart() {
        XCTAssertEqual(board.position, 0)
        board.move(15)
        XCTAssertEqual(board.position, 15)
        board.move(-25)
        XCTAssertEqual(board.position, 0)
    }
    
    func testBoardHas4Snakes() {
        XCTAssertEqual(board.snakes.count, 4)
    }
    
    func testAllSnakesHaveProperHeadAndTailEnd() {
        for snake in board.snakes {
            let (head, tailEnd) = snake
            XCTAssertNotEqual(head, tailEnd)
            XCTAssertLessThan(tailEnd, head)
            XCTAssertLessThan(head, 25)
            XCTAssertGreaterThan(tailEnd, 0)
        }
    }
    
}
