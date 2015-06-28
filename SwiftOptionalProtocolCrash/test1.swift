import Foundation 

@objc protocol P {
  optional static func foo()
}

class A: P {
  static func foo() {
    println("Hello")
  }
}

func test<T: P>(type: T.Type) {
  T.self.foo!()
}

test(A.self)

