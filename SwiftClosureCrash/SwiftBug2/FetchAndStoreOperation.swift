import Foundation

class FetchAndStoreOperation<DataType:AnyObject>: ConcurrentOperation /* Changing this to NSOperation will fix */ {
  private var fulfiller: (DataType -> Void)? // Removing this will fix

  override init() {
    super.init()
  }

  func fetchData() -> NSNumber {
    fatalError("Abstract")
  }

  final override func main() {
    fetchData() // Avoiding call this will fix
  }
}
