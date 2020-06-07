import Combine
import SwiftUI

class TripDetailPresenter: ObservableObject {
  private let interactor: TripDetailInteractor
  
  private var cancellable = Set<AnyCancellable>()
  
  init(interactor: TripDetailInteractor) {
    self.interactor = interactor
  }
  
}
