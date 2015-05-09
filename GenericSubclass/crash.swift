import Foundation

class A<T> { // Will crash
// class A<T:AnyObject> { //won't crash
  func foo() -> T {
    fatalError("Abstract")
  }

  func bar() -> T {
    return foo()
  }
}

class B<T>: A<NSNumber> {
  override func foo() -> NSNumber {
    return NSNumber(integer: 1)
  }
}

let b = B<AnyObject>()
println(b.bar()) // Expected: print "1"; actual: EXC_BAD_ACCESS
