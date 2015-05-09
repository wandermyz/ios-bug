import Foundation

class A<T> {
  func foo() -> T? {
    return nil
  }

  func bar() -> T? {
    return foo()
  }
}

class B<T:NSNumber>: A<T> {
  override func foo() -> T? {
    return T(integer: 1)
  }
}

let b = B<NSNumber>()
b.bar()

