import Foundation
import Combine

class TripListPresenter: ObservableObject {
  private let interactor: TripListInteractor
  
  init(interactor: TripListInteractor) {
    self.interactor = interactor
  }
}

