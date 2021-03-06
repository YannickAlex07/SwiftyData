//  Created by Yannick Alexander on 28.05.20.

import Foundation

public extension Double {
    init?(_ data: Data) {
        //Convert Data and check that it return something else return nil
        guard let value = Converter.convertToType(Double.self, data) else { return nil }
        self = value
    }
}
