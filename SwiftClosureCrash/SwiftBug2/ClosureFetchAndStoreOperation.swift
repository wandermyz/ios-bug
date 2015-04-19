import Foundation

final class ClosureFetchAndStoreOperation<DataType:AnyObject>: FetchAndStoreOperation<DataType> {
  private let fetchDataClosure:() -> NSNumber

  init(fetchDataClosure: () -> NSNumber) {
    self.fetchDataClosure = fetchDataClosure
    super.init()
  }

  override func fetchData() -> NSNumber {
    return self.fetchDataClosure()
  }
}
