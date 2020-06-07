import Combine
import SwiftUI

class TripDetailPresenter: ObservableObject {
  private let interactor: TripDetailInteractor
  
  private var cancellable = Set<AnyCancellable>()
  
  @Published var tripName: String = "No name"
  let setTripName: Binding<String>
  
  
  init(interactor: TripDetailInteractor) {
    self.interactor = interactor
    
    setTripName = Binding<String>(
      get: { interactor.tripName },
      set: { interactor.setTripName($0) }
    )
    
    interactor.tripNamePublisher
      .assign(to: \.tripName, on: self)
      .store(in: &cancellable)
  }
  
}
