import Foundation
import XCTest

class BoardTest: XCTestCase {
    
    class Board {
        let size = 25
        let snakes: [(Int,Int)] = [(24, 1)]
        let ladders: [(Int,Int)] = [(3, 16)]
        
        var position = 0
        
        func move(numberOfFields: Int) {

            var newPosition: Int? = position + numberOfFields            
            
            let maybeResetePosition = (snakes + ladders).filter { (head, _) -> Bool in
                return head == newPosition!
            }.first?.1
            
            if let resetedPosition = maybeResetePosition {
               newPosition = resetedPosition
            }
            
             if (newPosition > size) {
                position = size
            } else {
                position = newPosition!
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
    
    func testBoardMoveToSnakesHead() {
      board.move(24)
      XCTAssertEqual(board.position, 1)
    }
    
    func testBoardMoveToLadderStart() {
        board.move(3)
        XCTAssertEqual(board.position, 16)
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
    
    func testAllLaddersHaveProperStartAndEnd() {
        for ladder in board.ladders {
            let (start, end) = ladder
            XCTAssertNotEqual(start, end)
            XCTAssertLessThan(start, end)
            XCTAssertLessThan(end, 25)
            XCTAssertGreaterThan(start, 0)
        }
    }

    
}
