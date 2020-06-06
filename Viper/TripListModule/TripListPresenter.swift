import Foundation
import Combine

class TripListPresenter: ObservableObject {
  private let interactor: TripListInteractor
  
  @Published var trips: [Trip] = []
  
  init(interactor: TripListInteractor) {
    self.interactor = interactor
  }
}

