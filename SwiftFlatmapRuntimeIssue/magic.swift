func magic<T, U>(t:T, f:(T)->U?) -> [U] {
  if let u = f(t) {return [u]} else {return []}
  }
println(magic(10, { (v:Int) -> Float in Float(v) } ))

// Expected Output: 10.0
// Actual Output: 0.0

// Seems fixed in Swift 1.2
