import Foundation

println("Test")

class TestFetchAndStoreOperation<T>: FetchAndStoreOperation<NSArray /*Changing this to NSNumber will fix*/> {
  override init() {
    super.init()
  }

  override func fetchData() -> NSNumber {
    return NSNumber(integer: 7)
  }
}

TestFetchAndStoreOperation<AnyObject>()

let countriesFetchOperation = ClosureFetchAndStoreOperation<NSNumber> { () in NSNumber(integer: 10) } // Subclassing FetchAndStoreOperation directly will fix

countriesFetchOperation.main()

// XCode 6.2
// Expected: Run without errors
// Actual: Mysterious EXEC error
// Run on swift commandline won't reproduce the issue
