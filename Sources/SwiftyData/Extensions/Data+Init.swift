//  Created by Yannick Alexander on 28.05.20.

import Foundation

extension Data {
    init<T>(_ value: T) {
        var variableValue: T = value
        self = Swift.withUnsafeBytes(of: &variableValue) { Data($0) }
    }
}
