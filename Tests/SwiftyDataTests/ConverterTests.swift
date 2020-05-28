//  Created by Yannick Alexander on 28.05.20.

import XCTest
@testable import SwiftyData

final class ConverterTests: XCTestCase {
    
    func testConverterReturnNilGivenTooMuchData() {
        let sampleData = Data(count: 8)
            
        //Convert the sample data (8 zeroed bytes) into a Bool (1 Bit -> 1 Byte)
        //Should give back nil because the count of the sample data is too large for a bool
        let convertedData = Converter.convertToType(Bool.Type, sampleData)
        
        //Check that convertedData is Nil
        XCTAssertNil(convertedData)
    }
    
    func testConverterBasicConversionWorks() {
        let sampleData = Data(count: 8)
        
        //Try to convert the data (8 zeroed bytes) into an Int (64Bit -> 8 Byte)
        //Should give back an Int with the value of 0
        let convertedData = Converter.convertToType(Int.Type, sampleData)
        
        //Check that convertedData is not Nil
        XCTAssertNotNil(convertedData)
        
        //Check that the value of convertedData equals the value of 0
        XCTAssertEqual(convertedData!, 0)
    }
    
    static var allTests = [
        ("testConverterReturnNilGivenTooMuchData", testConverterReturnNilGivenTooMuchData),
        ("testConverterBasicConversionWorks", testConverterBasicConversionWorks)
    ]
}
