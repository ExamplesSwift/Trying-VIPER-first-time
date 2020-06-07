import Combine
import SwiftUI

class TripDetailPresenter: ObservableObject {
  private let interactor: TripDetailInteractor
  
  private var cancellable = Set<AnyCancellable>()
  
  @Published var tripName: String = "No name"
  let setTripName: Binding<String>
  
  
  init(interactor: TripDetailInteractor) {
    self.interactor = interactor
  }
  
}
