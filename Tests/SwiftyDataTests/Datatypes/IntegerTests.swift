//  Created by Yannick Alexander on 27.05.20.

import XCTest
@testable import SwiftyData

final class IntegerTests: XCTestCase {
    
    //MARK: - Int (64 Bit -> 8 Bytes)
    func testIntConversion() {
        let sample: Int = 33949712
        let sampleDataInUInt8: [UInt8] = [16, 8, 6, 2, 0, 0, 0, 0]
        
        //Convert Int To Data
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
        
        //Convert data back to Int
        let converted = Int(data)
        
        //Check if data equals given Int
        XCTAssertEqual(converted, sample)
    }
    
    func testNegativeIntConversion() {
        let sample: Int = -33949712
        let sampleDataInUInt8: [UInt8] = [240, 247, 249, 253, 255, 255, 255, 255]
        
        //Convert Int To Data
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
        
        //Convert data back to Int
        let converted = Int(data)
        
        //Check if data equals given Int
        XCTAssertEqual(converted, sample)
    }
    
    func testUIntConversion() {
        let sample: UInt = 45788923
        let sampleDataInUInt8: [UInt8] = [251, 174, 186, 2, 0, 0, 0, 0]
        
        //Convert UInt To Data
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
        
        //Convert data back to UInt
        let converted = UInt(data)
        
        //Check if data equals given UInt
        XCTAssertEqual(converted, sample)
    }
    
    
    //MARK: - Int32 (32 Bit -> 4 Bytes)
    func testInt32Conversion() {
        let sample: Int32 = 45432
        let sampleDataInUInt8: [UInt8] = [120, 177, 0, 0]
        
        //Convert Int32 To Data
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
        
        //Convert data back to Int32
        let converted = Int32(data)
        
        //Check if data equals given Int32
        XCTAssertEqual(converted, sample)
    }
    
    func testNegativeInt32Conversion() {
        let sample: Int32 = -45432
        let sampleDataInUInt8: [UInt8] = [136, 78, 255, 255]
        
        //Convert Int32 To Data
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
        
        //Convert data back to Int32
        let converted = Int32(data)
        
        //Check if data equals given Int32
        XCTAssertEqual(converted, sample)
    }
    
    func testUInt32Conversion() {
        let sample: UInt32 = 23784
        let sampleDataInUInt8: [UInt8] = [232, 92, 0, 0]
        
        //Convert UInt32 To Data
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
        
        //Convert data back to UInt32
        let converted = UInt32(data)
        
        //Check if data equals given UInt32
        XCTAssertEqual(converted, sample)
    }
    
    
    //MARK: - Int16 (16 Bit -> 2 Bytes)
    func testInt16Conversion() {
        let sample: Int16 = 12767
        let sampleDataInUInt8: [UInt8] = [223, 49]
        
        //Convert Int16 To Data
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
        
        //Convert data back to Int16
        let converted = Int16(data)
        
        //Check if data equals given Int16
        XCTAssertEqual(converted, sample)
    }
    
    func testNegativeInt16Conversion() {
        let sample: Int16 = -12767
        let sampleDataInUInt8: [UInt8] = [33, 206]
        
        //Convert Int16 To Data
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
        
        //Convert data back to Int16
        let converted = Int16(data)
        
        //Check if data equals given Int16
        XCTAssertEqual(converted, sample)
    }
    
    func testUInt16Conversion() {
        let sample: UInt16 = 55535
        let sampleDataInUInt8: [UInt8] = [239, 216]
        
        //Convert UInt16 To Data
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
        
        //Convert data back to UInt16
        let converted = UInt16(data)
        
        //Check if data equals given UInt16
        XCTAssertEqual(converted, sample)
    }
    
    
    //MARK: - Int8 (8 Bit -> 1 Byte)
    func testInt8Conversion() {
        let sample: Int8 = 78
        let sampleDataInUInt8: UInt8 = 78
        
        //Convert Int8 to data
        let data = Data(sample)
        
        //Check if first byte of data equals the sample
        XCTAssertEqual(data.first!, sampleDataInUInt8)
        
        //Convert data back to Int8
        let converted = Int8(data)
        
        //Check if converted Int8 equals the given sample Int8
        XCTAssertEqual(converted, sample)
    }
    
    func testNegativeInt8Conversion() {
        let sample: Int8 = -78
        let sampleDataInUInt8: UInt8 = 178
        
        //Convert Int8 to data
        let data = Data(sample)
        
        //Check if first byte of data equals the sample
        XCTAssertEqual(data.first!, sampleDataInUInt8)
        
        //Convert data back to Int8
        let converted = Int8(data)
        
        //Check if converted Int8 equals the given sample Int8
        XCTAssertEqual(converted, sample)
    }
    
    func testUInt8Conversion() {
        let sample: UInt8 = 230
        
        //Convert UInt8 to data
        let data = Data(sample)
        
        //Check if first byte of data equals the sample
        XCTAssertEqual(data.first!, sample)
        
        //Convert data back to UInt8
        let converted = UInt8(data)
        
        //Check if converted Int8 equals the given sample UInt8
        XCTAssertEqual(converted, sample)
    }
    
    
    //MARK: - All Tests Struct
    static var allTests = [
        ("testIntConversion", testIntConversion),
        ("testNegativeIntConversion", testNegativeIntConversion),
        ("testUIntConversion", testUIntConversion),
        
        ("testInt32Conversion", testInt32Conversion),
        ("testNegativeInt32Conversion", testNegativeInt32Conversion),
        ("testUInt32Conversion", testUInt32Conversion),
        
        ("testInt16Conversion", testInt16Conversion),
        ("testNegativeInt16Conversion", testNegativeInt16Conversion),
        ("testUInt16Conversion", testUInt16Conversion),
        
        ("testInt8Conversion", testInt8Conversion),
        ("testNegativeInt8Conversion", testNegativeInt8Conversion),
        ("testUInt8Conversion", testUInt8Conversion)
    ]
}
