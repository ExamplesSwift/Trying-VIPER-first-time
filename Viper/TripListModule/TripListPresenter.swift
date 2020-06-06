import Foundation
import Combine
import SwiftUI

class TripListPresenter: ObservableObject {
  private let interactor: TripListInteractor
  
  private var cancellables = Set<AnyCancellable>()
  
  @Published var trips: [Trip] = []
  
  init(interactor: TripListInteractor) {
    self.interactor = interactor
    
    interactor.model.$trips
      .assign(to: \.trips, on: self)
    .store(in: &cancellables)
  }
  
  func makeAddNewButton() -> some View {
    Button(action: addNewTrip) { Image(systemName: "plus")
    }
  }
  
  func addNewTrip() {
    interactor.addNewTrip()
  }
  
  func deleteTrip(_ index: IndexSet) {
    interactor.deleteTrip(index)
  }
  
}

