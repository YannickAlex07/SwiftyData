# SwiftyData

SwiftyData is an package to make the work with the Swift Data Object easier. It provides convenient inits that allow easy conversion between datatypes (Int, Bool, Float, Double) and Data.

```swift
// Swift

import SwiftyData

let value: Int = 46789
let data = Data(value) //Data Object with bytes that equal that value
let convertedValue = Int(data) //Equals Value (46789)

```

## Usage

Using SwiftyData is super easy and convenient. Just add the package via Swift Package Manager and use the added inits.

#### Data Init

The Data Init is a generic one, it basically allows you to throw whatever type you want at it.

```swift

extension Data {
    init<T>(_ value: T) {}
}

```

#### Other Datatype Inits

Any other basic datatype (Int, Float, Double, Bool) implements an Init that takes Data as a parameter. Just throw in the data you want to convert and there you go.
All of these inits check if the given data fits into the given datatype, if not it return nil (via failable inits).

```swift

extension Datatype {
    init?(_ data: Data) {}
}

```

## Versioning

The current version if SwiftyData is **v1.0**

## iOS Version Support

SwiftyData supports all iOS version from **>=v11**.

## Future Features

- [ ] - Array Support
- [ ] - Easier Data Operation (Adding, Comparing & Co.)