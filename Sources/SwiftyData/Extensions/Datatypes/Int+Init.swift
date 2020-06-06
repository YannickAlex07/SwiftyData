//  Created by Yannick Alexander on 28.05.20.

import Foundation

public extension Int {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Int.self, data) else { return nil }
        self = value
    }
}

public extension UInt {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(UInt.self, data) else { return nil }
        self = value
    }
}

public extension Int64 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Int64.self, data) else { return nil }
        self = value
    }
}

public extension UInt64 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(UInt64.self, data) else { return nil }
        self = value
    }
}

public extension Int32 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Int32.self, data) else { return nil }
        self = value
    }
}

public extension UInt32 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(UInt32.self, data) else { return nil }
        self = value
    }
}

public extension Int16 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Int16.self, data) else { return nil }
        self = value
    }
}

public extension UInt16 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(UInt16.self, data) else { return nil }
        self = value
    }
}

public extension Int8 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Int8.self, data) else { return nil }
        self = value
    }
}

public extension UInt8 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(UInt8.self, data) else { return nil }
        self = value
    }
}

