//  Created by Yannick Alexander on 27.05.20.

import XCTest
@testable import SwiftyData

final class BooleanTests: XCTestCase {
    
    //Boolean (1 Bit)
    
    func testTrueBooleanConversion() {
        let sample: Bool = true
        let sampleDataInUInt8: UInt8 = 1
        
        //Convert sample Bool to Data
        let data = Data(sample)
        
        //Check if converted data equals to the given sample data
        XCTAssertEqual(data.first!, sampleDataInUInt8)
        
        //Convert the data back to a Bool
        let converted = Bool(data)
        
        //Check if converted Bool equals the sample Bool
        XCTAssertEqual(converted, sample)
    }
    
    func testFalseBooleanConversion() {
        let sample: Bool = false
        let sampleDataInUInt8: UInt8 = 0
        
        //Convert sample Bool to Data
        let data = Data(sample)
        
        //Check if converted data equals to the given sample data
        XCTAssertEqual(data.first!, sampleDataInUInt8)
        
        //Convert the data back to a Bool
        let converted = Bool(data)
        
        //Check if converted Bool equals the sample Bool
        XCTAssertEqual(converted, sample)
    }
    
    static var allTests = [
        ("testTrueBooleanConversion", testTrueBooleanConversion),
        ("testFalseBooleanConversion", testFalseBooleanConversion)
    ]
}
