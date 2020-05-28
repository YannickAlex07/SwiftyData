//  Created by Yannick Alexander on 28.05.20.

import Foundation

class Converter {
    internal static func convertToType<T>(_ type: T.Type, _ data: Data) -> T? {
        guard data.count <= MemoryLayout<T>.size else { return nil }
        
        return data.withUnsafeBytes { (ptr: UnsafeRawBufferPointer) -> T in
            return ptr.load(as: T.self)
        }
    }
}
