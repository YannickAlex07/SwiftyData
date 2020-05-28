//  Created by Yannick Alexander on 27.05.20.

import XCTest
@testable import SwiftyData

final class DoubleTests: XCTestCase {
    
    //Double (64 Bit -> 8 Byte)
    
    func testDoubleConversion() {
        let sample: Double = 321.98647
        let sampleDataInUInt8: [UInt8] = [195, 71, 196, 148, 200, 31, 116, 64]
        
        //Convert Double To Data
        let data = Data(sample)
        
        //Make Iterator and create array
        var dataInUInt8: [UInt8] = [UInt8]()
        var dataIterator = data.makeIterator()
        
        //Iterate over all objects in the iterator and add them to the array
        while let byte = dataIterator.next() {
            dataInUInt8.append(byte)
        }
        
        //Check if data equals given data
        XCTAssertEqual(dataInUInt8, sampleDataInUInt8)
        
        //Convert data back to Double
        var converted: Double = Double(data)
        
        //Check if data equals given Double
        XCTAssertEqual(converted, sample)
    }
    
    
    func testNegativeDoubleConversion() {
        let sample: Double = -321.98647
        let sampleDataInUInt8: [UInt8] = [195, 71, 196, 148, 200, 31, 116, 192]
        
        //Convert Double To Data
        let data = Data(sample)
        
        //Make Iterator and create array
        var dataInUInt8: [UInt8] = [UInt8]()
        var dataIterator = data.makeIterator()
        
        //Iterate over all objects in the iterator and add them to the array
        while let byte = dataIterator.next() {
            dataInUInt8.append(byte)
        }
        
        //Check if data equals given data
        XCTAssertEqual(dataInUInt8, sampleDataInUInt8)
        
        //Convert data back to Double
        var converted: Double = Double(data)
        
        //Check if data equals given Double
        XCTAssertEqual(converted, sample)
    }
    
    static var allTests = [
        ("testDoubleConversion", testDoubleConversion),
        ("testNegativeDoubleConversion", testNegativeDoubleConversion)
    ]
}
