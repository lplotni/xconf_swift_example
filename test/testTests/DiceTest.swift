import Foundation
import XCTest

class DiceTest: XCTestCase {
    
    class Dice {
        class func throw() -> Int {
            let randomNumber = Int(arc4random_uniform(6))
            return randomNumber == 0 ? 1 : randomNumber
        }
    }
    
    func testThrowDice() {
        for i in 0...100 {
            let result = Dice.throw()
            XCTAssertGreaterThan(result, 0)
            XCTAssertLessThan(result, 7)
        }
    }
    
}
