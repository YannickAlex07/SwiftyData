//  Created by Yannick Alexander on 28.05.20.

import Foundation

public extension Float {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Float.self, data) else { return nil }
        self = value
    }
}

public extension Float80 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Float80.self, data) else { return nil }
        self = value
    }
}
