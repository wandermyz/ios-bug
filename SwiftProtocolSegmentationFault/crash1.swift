protocol P { static func bar() -> String }
P.bar()

// Expected: Compiles or compilation error
// Actual: Segmentation Fault: 11
// Tested in Swift 1.2
