import Foundation

class FetchAndStoreOperation<DataType:AnyObject>: ConcurrentOperation {
  private var fulfiller: (DataType -> Void)?

  override init() {
    super.init()
  }

  func fetchData() -> NSNumber {
    fatalError("Abstract")
  }

  final override func main() {
    fetchData()
  }
}
