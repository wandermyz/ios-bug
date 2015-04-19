protocol P { static func bar() -> String }
class C: P { static func bar() -> String { return "bar() from C" }}
let p:P.Protocol = C.self

// Expected: Compiles or compilation error
// Actual: Bitcast requires both operands to be pointer or neither %4 = bitcast %swift.type.89* %3 to i8, !dbg !48
// Tested in Swift 1.2
