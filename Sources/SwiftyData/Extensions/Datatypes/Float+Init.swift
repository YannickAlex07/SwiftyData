//  Created by Yannick Alexander on 28.05.20.

import Foundation

extension Float {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Float.self, data) else { return nil }
        self = value
    }
}

extension Float80 {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Float80.self, data) else { return nil }
        self = value
    }
}
