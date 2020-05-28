//  Created by Yannick Alexander on 27.05.20.

import XCTest
@testable import SwiftyData

final class FloatTests: XCTestCase {
    
    //MARK: - Float (32 Bit -> 4 Byte)
    
    func testFloatConversion() {
        let sample: Float = 647.83928
        let sampleDataInUInt8: [UInt8] = [183, 245, 33, 68]
        
        //Convert Float To Data
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
        
        //Convert data back to Float
        let converted = Float(data)
        
        //Check if data equals given Float
        XCTAssertEqual(converted, sample)
    }
    
    func testNegativeFloatConversion() {
        let sample: Float = -647.83928
        let sampleDataInUInt8: [UInt8] = [183, 245, 33, 196]
        
        //Convert Float To Data
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
        
        //Convert data back to Float
        let converted = Float(data)
        
        //Check if data equals given Float
        XCTAssertEqual(converted, sample)
    }
    
    
    //MARK: - Float80 (80 Bit -> 16 Byte [Allocates more bytes that it needs])

    func testFloat80Conversion() {
        let sample: Float80 = 68347.83928839299
        let sampleDataInUInt8: [UInt8] = [248, 230, 83, 205, 109, 235, 125, 133,
                                          15, 64, 0, 0, 0, 0, 0, 0]
        
        //Convert Float80 To Data
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
        
        //Convert data back to Float80
        let converted = Float80(data)
        
        //Check if data equals given Float80
        XCTAssertEqual(converted, sample)
    }
    
    func testNegativeFloat80Conversion() {
        let sample: Float80 = -68347.83928839299
        let sampleDataInUInt8: [UInt8] = [248, 230, 83, 205, 109, 235, 125, 133,
                                          15, 192, 0, 0, 0, 0, 0, 0]
        
        //Convert Float80 To Data
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
        
        //Convert data back to Float80
        let converted = Float80(data)
        
        //Check if data equals given Float80
        XCTAssertEqual(converted, sample)
    }

    
    //MARK: - Float64 (64 Bit -> 8 Byte)

    func testFloat64Conversion() {
        let sample: Float64 = 22647.83928
        let sampleDataInUInt8: [UInt8] = [12, 118, 195, 182, 245, 29, 214, 64]
        
        
        //Convert Float64 To Data
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
        
        //Convert data back to Float64
        let converted = Float64(data)
        
        //Check if data equals given Float64
        XCTAssertEqual(converted, sample)
    }
    
    func testNegativeFloat64Conversion() {
        let sample: Float64 = -22647.83928
        let sampleDataInUInt8: [UInt8] = [12, 118, 195, 182, 245, 29, 214, 192]
        
        //Convert Float64 To Data
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
        
        //Convert data back to Float64
        let converted = Float64(data)
        
        //Check if data equals given Float64
        XCTAssertEqual(converted, sample)
    }

    
    //MARK: - Float32 (32 Bit -> 4 Byte)

    func testFloat32Conversion() {
        let sample: Float32 = 647.83928
        let sampleDataInUInt8: [UInt8] = [183, 245, 33, 68]
        
        //Convert Float32 To Data
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
        
        //Convert data back to Float32
        let converted = Float32(data)
        
        //Check if data equals given Float32
        XCTAssertEqual(converted, sample)
    }
    
    func testNegativeFloat32Conversion() {
        let sample: Float32 = -647.83928
        let sampleDataInUInt8: [UInt8] = [183, 245, 33, 196]
        
        //Convert Float32 To Data
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
        
        //Convert data back to Float32
        let converted = Float32(data)
        
        //Check if data equals given Float32
        XCTAssertEqual(converted, sample)
    }

    
    //MARK: - All Tests
    
    static var allTests = [
        ("testFloatConversion", testFloatConversion),
        ("testNegativeFloatConversion", testNegativeFloatConversion),
        
        ("testFloat80Conversion", testFloat80Conversion),
        ("testNegativeFloat80Conversion", testNegativeFloat80Conversion),
        
        ("testFloat64Conversion", testFloat64Conversion),
        ("testNegativeFloat64Conversion", testNegativeFloat64Conversion),
        
        ("testFloat32Conversion", testFloat32Conversion),
        ("testNegativeFloat32Conversion", testNegativeFloat32Conversion)
    ]
}
