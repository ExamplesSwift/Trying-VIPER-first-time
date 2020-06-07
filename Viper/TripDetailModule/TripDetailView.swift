import SwiftUI

struct TripDetailView: View {
  @ObservedObject var presenter: TripDetailPresenter
  
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TripDetailView_Previews: PreviewProvider {
    static var previews: some View {
      let model = DataModel.sample
      let trip = model.trips[1]
      let mapProvider = RealMapDataProvider()
      let presenter = TripDetailPresenter(interactor: TripDetailInteractor(trip: trip, model: model, mapInfoProvider: mapProvider))
      
      return NavigationView {
        TripDetailView(presenter: presenter)
      }
    }
}
