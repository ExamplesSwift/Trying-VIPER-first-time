import SwiftUI

struct TripListView: View {
  @ObservedObject var presenter: TripListPresenter
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TripListView_Previews: PreviewProvider {
    static var previews: some View {
      let model = DataModel.sample
      let interactor = TripListInteractor(model: model)
      let presenter = TripListPresenter(interactor: interactor)
      return TripListView(presenter: presenter)
    }
}
