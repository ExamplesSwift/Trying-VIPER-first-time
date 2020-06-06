import Foundation

class TripListInteractor {
  let model: DataModel
  
  init(model: DataModel) {
    self.model = model
  }
  
  func addNewTrip() {
    model.pushNewTrip()
  }
  
}
