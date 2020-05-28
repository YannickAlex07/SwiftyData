import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(IntegerTests.allTests),
        testCase(BooleanTests.allTests),
        testCase(FloatTests.allTests),
        testCase(DoubleTests.allTests)
    ]
}
#endif
