func magic<T, U>(t:T, f:(T)->U?) -> [U] {
  if let u = f(t) {return [u]} else {return []}
  }
println(magic(10, { (v:Int) -> Float in Float(v) } ))

// Expected: Compilation error
// Actual Output: 0.0 or other random numbers

// Seems fixed in Swift 1.2
