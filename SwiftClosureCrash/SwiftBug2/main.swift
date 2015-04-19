import Foundation

println("Test")

class TestFetchAndStoreOperation<T>: FetchAndStoreOperation<NSArray> {
  override init() {
    super.init()
  }

  override func fetchData() -> NSNumber {
    return NSNumber(integer: 7)
  }
}

TestFetchAndStoreOperation<AnyObject>()

let countriesFetchOperation = ClosureFetchAndStoreOperation<NSNumber> { () in NSNumber(integer: 10) }

countriesFetchOperation.main()

// XCode 6.2
// Expected: Run without errors
// Actual: Mysterious EXEC error
