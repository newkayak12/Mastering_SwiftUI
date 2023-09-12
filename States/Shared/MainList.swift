import SwiftUI

struct MainList: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        NavigationView {
            List {
                SupportNavigationLink("One-way Binding") { OneWayBinding() }
                SupportNavigationLink("Two-way Binding") { TwoWayBinding() }
                SupportNavigationLink("Observable List") { ObservableList() }
                SupportNavigationLink("Environment") { Environment_Tutorials() }
                SupportNavigationLink("Environment Objects") { EnvironmentObjects_Tutorials() }
                SupportNavigationLink("StateObject") { StateObject_Tutorials() }
            }
            .listStyle(.automatic)
            .navigationTitle("States")
            
            Text("State Tutorials")
                .font(.largeTitle)
        }
    }
}

struct SystemViewList_Previews: PreviewProvider {
    static var previews: some View {
        MainList(viewModel: ViewModel())
    }
}
