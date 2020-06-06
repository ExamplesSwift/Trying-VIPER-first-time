import Foundation
import Combine

class TripListPresenter: ObservableObject {
  private let interactor: TripListInteractor
  
  private var cancellables = Set<AnyCancellable>()
  
  @Published var trips: [Trip] = []
  
  init(interactor: TripListInteractor) {
    self.interactor = interactor
  }
}

